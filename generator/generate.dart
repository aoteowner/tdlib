// ignore_for_file: prefer_interpolation_to_compose_strings
import 'dart:io';

const tdApiDir = 'lib/src/tdapi';
final tdApiFile = File('$tdApiDir/tdapi.dart');
final functionsDir = Directory("$tdApiDir/functions");
final objectsDir = Directory("$tdApiDir/objects");
const builtInTypes = [
  'int',
  'int32',
  'int53',
  'int64',
  'long',
  'double',
  'string',
  'bytes',
  'Bool'
];
const dartTypes = ['int', 'double', 'String', 'bool'];

// regex patterns
final sectionRegx = RegExp(r'---(\w+)---');
final classRegx = RegExp(r'^//@class (\w+) @description (.*)');
final docsRegx =
    RegExp(r'//((-)|@)(description)?([\w -.,:;={}\?\/\(\)"]+)(@?)(.*)?');
final argsRegx = RegExp(r'(\w+):([\w<>]+)');
final fieldsRegx = RegExp(r'^(\w+) (.*)?= (\w+);$');

final List<TlObject> _objects = [];

class DartTdDocumentationGenerator {
  String schemePath = 'data/td_api.tl';
  int skipLines = 13;
  String mainPart = 'import \'../tdapi.dart\';';

  /// Main generating function
  void generate() {
    // read td_api scheme
    var schemeData = readFile(schemePath);

    // skip built-in types
    schemeData = schemeData.sublist(skipLines);

    // extract data
    dispatchSchemeData(schemeData);

    fetchRelevant();

    validationVariables();

    writeToFile();
    final res = Process.runSync('dart', ['format', './lib/src/tdapi']);
    if (res.exitCode == 0) {
      // ignore: avoid_print
      print('format: success');
    }
  }

  /// dispatching types and functions from data
  /// extract variables and descriptions and store.
  /// [lines] list of scheme lines
  void dispatchSchemeData(List<String> lines) {
    var classDescription = '';
    var variablesDescriptions = <String>[];
    String? section = 'types';
    // reading data line by line and analyze them.
    for (final line in lines) {
      // check if we are in types section or functions section.
      if (sectionRegx.hasMatch(line)) {
        section = sectionRegx.firstMatch(line)!.group(1);
        continue;
      }

      // check for class type description line
      if (classRegx.hasMatch(line)) {
        final classData = classRegx.firstMatch(line)!;
        final className = classData.group(1);
        final classDes = classData.group(2);
        _objects.add(TlObject(className!, classDes!, 'classes'));
        continue;
      }

      // check documentation line.
      if (docsRegx.hasMatch(line)) {
        final docData = docsRegx.firstMatch(line)!;

        // if line start with '//-', this line is continuation of last line.
        final continuation = (docData.group(2) == null) ? false : true;

        // starting with '//@description' determines a description line.
        final isDescription = docData.group(3) == 'description' ? true : false;

        // rest of information from this line, after description state.
        final docs = docData.group(4)!.trim();

        // variables description start with '@VARIABLE_NAME', @ is a sign of extra descriptions.
        final hasExtra = docData.group(5) == '@' ? true : false;

        // rest of information from this line, after sign of extra descriptions.
        final extraData = docData.group(6);

        if (isDescription) {
          classDescription = docs;
        } else if (continuation) {
          // if this line is continuation of last line, must be added to last variable description or class description
          // always class description is the first thing that defined. so if there are variables information so class description is finished.
          if (variablesDescriptions.isNotEmpty) {
            variablesDescriptions[variablesDescriptions.length - 1] +=
                '. $docs';
          } else {
            classDescription += '. $docs';
          }
        } else {
          variablesDescriptions.add(docs);
        }
        if (hasExtra) {
          // where the '@' is the variables descriptions sign, splitting extra information by this sign separates descriptions.
          variablesDescriptions.addAll(extraData!.split('@'));
        }
        continue;
      }

      // check for the last line of
      if (fieldsRegx.hasMatch(line)) {
        final classData = fieldsRegx.firstMatch(line)!;

        final className = classData.group(1)!;
        final classArgs = classData.group(2);
        final classReturnType = classData.group(3);
        final args = (classArgs == null)
            ? <String, String>{}
            // ignore: prefer_for_elements_to_map_fromIterable
            : Map<String, String>.fromIterable(classArgs.trim().split(' '),
                key: (var arg) => arg.split(':')[0],
                value: (var arg) => arg.split(':')[1]);

        // store class data and reset class and variables descriptions.
        _objects.add(TlObject(
            upperFirstChar(className), classDescription, section!,
            variablesDescriptions: variablesDescriptions,
            argsData: args,
            returnType: classReturnType!));
        classDescription = '';
        variablesDescriptions = [];
      }
    }
  }

  /// find relevant classes like those classes have parent class
  /// and find result classes of function classes
  void fetchRelevant() {
    _objects.where((TlObject obj) => obj.isParent).forEach((TlObject cls) {
      final children = _objects.where((TlObject element) =>
          cls.name == element.returnType && element.hasParent);
      children.forEach((TlObject child) {
        child.relevantObjects.add(cls.name);
        cls.relevantObjects.add(child.name);
      });
    });
    _objects.where((TlObject obj) => obj.isFunction).forEach((TlObject func) {
      final results =
          _objects.where((TlObject element) => func.returnType == element.name);
      results.forEach((TlObject result) {
        if (result.isParent) {
          func.relevantObjects.addAll(result.relevantObjects);
        } else {
          func.relevantObjects.add(result.name);
        }
      });
    });
  }

  /// check variables by arguments
  void validationVariables() {
    _objects.forEach((obj) => obj.makeVariablesList());
  }

  /// final step
  /// write data to file
  void writeToFile() {
    tdApiFile.writeAsStringSync(
        'import \'dart:convert\' show json;\n\nexport \'object.dart\';\nimport \'object.dart\';\nexport \'function.dart\';\n\n');
    if (functionsDir.existsSync()) functionsDir.deleteSync(recursive: true);
    functionsDir.createSync(recursive: true);

    if (objectsDir.existsSync()) objectsDir.deleteSync(recursive: true);
    objectsDir.createSync(recursive: true);

    for (final obj in _objects) {
      final snakeName = snakeCase(obj.name);
      final folderName = sectionFolder(obj.type);
      var finalDir = '$tdApiDir/$folderName/$snakeName.dart';

      var parent = 'TdObject';
      final variables = <String>[];
      final arguments = <String>[];
      var hasFactory = false;
      var fromJsonFields = <String>[];
      final toJsonFields = <String>[];
      var writeMode = FileMode.write;
      var objectPart = mainPart;
      var extra = '';
      var copyWithFields = [];
      var copyWithReturnFields = [];
      if (obj.isParent) {
        hasFactory = true;
        fromJsonFields.add('switch(json["@type"]) {');
        obj.relevantObjects.forEach((String? relevantObject) {
          fromJsonFields.add('  case $relevantObject.CONSTRUCTOR:');
          fromJsonFields.add('    return $relevantObject.fromJson(json);');
          // extra = '\n\n  @override\n  dynamic get extra => null;\n\n  @override\n  int? get clientId => null;';
        });
        fromJsonFields.add('  default:');
        fromJsonFields.add('    return const ${obj.name}();');
        fromJsonFields.add('}');
      } else {
        toJsonFields.add('"@type": CONSTRUCTOR,');
        obj.variables.forEach((variable) {
          variables.add(
              '/// [${variable.argName}] ${variable.description}\n  final ${variable.optional ? variable.type.toString() + "?" : variable.type} ${variable.argName};');
          arguments.add((variable.optional ? '' : 'required ') +
              'this.${variable.argName}');
          fromJsonFields.add('${variable.argName}: ${variable.read},');
          toJsonFields.add('\n      "${variable.name}": ${variable.write},');
          copyWithFields.add('${variable.type}? ${variable.argName},');
          copyWithReturnFields.add(
              '${variable.argName}: ${variable.argName} ?? this.${variable.argName},');
        });
        if (obj.isFunction) {
          fromJsonFields = [];
          parent = 'TdFunction';
          //variables.add('/// callback sign\n  dynamic extra;');
          toJsonFields.add('\n      "@extra": extra,');
        } else {
          // if (_objects.any((func) =>
          //     func.isFunction && func.relevantObjects.contains(obj.name))) {
          //   variables.add('/// callback sign\n  dynamic extra;');
          //   fromJsonFields.add('this.extra = json[\'@extra\'];');
          //   variables.add('/// client identifier\n  int clientId;');
          //   fromJsonFields.add('this.clientId = json[\'@client\'];');
          // }
          if (obj.hasParent) {
            objectPart = '';
            parent = obj.returnType;
            writeMode = FileMode.append;
            finalDir = '$tdApiDir/$folderName/${snakeCase(parent)}.dart';
          }
          if (_objects.any(
              (e) => e.isFunction && e.relevantObjects.contains(obj.name))) {
            variables.add(
                '/// [extra] callback sign\n  @override\n  final dynamic extra;');
            arguments.add('this.extra');
            fromJsonFields.add('extra: json[\'@extra\'],');
            copyWithFields.add('dynamic extra,');
            copyWithReturnFields.add('extra: extra ?? this.extra,');
            variables.add(
                '/// [clientId] client identifier\n  @override\n  final int? clientId;');
            arguments.add('this.clientId');
            fromJsonFields.add('clientId: json[\'@client_id\'],');
            copyWithFields.add('int? clientId,');
            copyWithReturnFields.add('clientId: clientId ?? this.clientId,');
          } else {
            //extra = '\n\n  @override\n  dynamic get extra => null;\n\n  @override\n  int? get clientId => null;';
          }
        }
      }
      if (!obj.hasParent) {
        var s = 'export \'$folderName/$snakeName.dart\';';
        if (folderName != 'functions') {
          s = '$s\nimport \'$folderName/$snakeName.dart\';';
        }
        tdApiFile.writeAsStringSync('$s\n',
            mode: FileMode.append); // todo: Even Functions?
      }
      final buffer = StringBuffer();
      final objFile = File(finalDir);

      final className = obj.name == 'Error' ? 'TdError' : obj.name;

      buffer.write('''
$objectPart

class $className extends $parent {
  /// ${obj.description}
''');

      if (arguments.isEmpty) {
        buffer.write('const $className();\n');
      } else {
        buffer.write('const $className({${arguments.join(',\n')},});\n');
      }

      buffer.write('''
${variables.join('\n\n ')}
$extra
''');

      if (!obj.isFunction) {
        if (hasFactory) {
          // buffer.write('a ');
        }

        buffer.write('factory $className.fromJson(Map<String, dynamic> json)');
        if (fromJsonFields.isEmpty) {
          buffer.write('=> const $className();');
        } else if (obj.isParent) {
          buffer.write('{ ${fromJsonFields.join('\n')}\n}');
        } else {
          buffer.write('=> $className(${fromJsonFields.join('\n')}\n);');
        }
      }

      buffer.write('''
@override
Map<String, dynamic> toJson([dynamic extra]) {
  return {
  ${toJsonFields.join('')}
  };
}
''');

      if (obj.hasParent) {
        buffer.write('@override\n');
      }

      if (copyWithFields.isEmpty) {
        buffer.write("$className copyWith() {");
      } else {
        buffer.write("$className copyWith({${copyWithFields.join('\n')}}) {\n");
      }
      if (copyWithReturnFields.isEmpty) {
        buffer.write('return const $className();\n');
      } else {
        buffer.write('return $className(${copyWithReturnFields.join('\n')});\n');
      }
      buffer.write('}\n');

      buffer.write('''
static const CONSTRUCTOR = '${lowerFirstChar(obj.name)}';

@override
String getConstructor() => CONSTRUCTOR;      
''');

      buffer.write('}');

      objFile.writeAsStringSync(buffer.toString(), mode: writeMode);
    }

    final convertorTemple = File('generator/convertor.tmpl').readAsStringSync();
    var cases = '';
    _objects.where((obj) => !obj.isFunction).forEach((obj) {
      cases +=
          '\n    case \'${lowerFirstChar(obj.name)}\': return ${obj.name == 'Error' ? 'TdError' : obj.name}.fromJson(newJson);';
    });
    tdApiFile.writeAsStringSync(
      convertorTemple.replaceAll('CASES', cases),
      mode: FileMode.append,
    );
  }
}

void main() {
  DartTdDocumentationGenerator().generate();
}

List<String> readFile(String path) => File(path).readAsLinesSync();

String snakeCase(String string) {
  string = string.replaceAllMapped(
      RegExp(r'(.)([A-Z][a-z]+)'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'));
  string = string.replaceAllMapped(
      RegExp(r'([a-z0-9])([A-Z])'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'));
  return string.toLowerCase();
}

String camelCase(String string) {
  return string.split('_').map((str) => upperFirstChar(str)).join();
}

String upperFirstChar(String string) {
  return string.replaceFirst(string[0], string[0].toUpperCase());
}

String lowerFirstChar(String string) {
  return string.replaceFirst(string[0], string[0].toLowerCase());
}

String sectionFolder(String? type) {
  switch (type) {
    case 'functions':
      return 'functions';
    case 'classes':
    case 'types':
    default:
      return 'objects';
  }
}

class TlObject {
  final String name;
  final String description;
  final String type;
  late List<String> relevantObjects;
  late List<String> variablesDescriptions;
  late Map<String, String> argsData;
  late List<TlObjectArg> variables;
  final String returnType;

  TlObject(this.name, this.description, this.type,
      {this.returnType = '',
      List<String>? variablesDescriptions,
      Map<String, String>? argsData,
      List<String>? relevantObjects,
      List<TlObjectArg>? variables}) {
    this.variablesDescriptions = variablesDescriptions ?? <String>[];
    this.argsData = argsData ?? <String, String>{};
    this.relevantObjects = relevantObjects ?? <String>[];
    this.variables = variables ?? <TlObjectArg>[];
  }

  bool get isFunction => type == 'functions';

  // bool get isParent => !isFunction && returnType == null;
  bool get isParent => type == 'classes';

  // type == 'types' ok?
  bool get hasParent => !isFunction && name != returnType && !isParent;

  void makeVariablesList() {
    variablesDescriptions.forEach((variableData) {
      final splitVariableData = variableData.split(' ');
      final variableName = splitVariableData[0] == 'param_description'
          ? 'description'
          : splitVariableData[0];
      final variableDescription = splitVariableData.sublist(1).join(' ');
      final variableType = argsData[variableName];
      final obj =
          TlObjectArg(variableName, variableDescription, tlType: variableType);
      variables.add(obj);
    });
  }
}

class TlObjectArg {
  final String name;
  final String description;
  late String argName;
  late DartType type;
  String get read => type.fromJson(name);
  String get write => type.toJson(argName, optional);
  late bool optional;

  TlObjectArg(this.name, this.description, {String? argName, String? tlType}) {
    this.argName = argName ?? lowerFirstChar(camelCase(name));
    optional = (description.contains('may be null') ||
            description.contains("pass null")) &
        !description
            .contains('List of'); // null list fiedls are just empty listes.
    type = DartType.getBuiltInDartType(tlType ?? '');
  }
}

final class DartType {
  DartType(this.baseType, this.isInt64)
      : child = null,
        isClass = false;
  DartType.list(this.baseType, DartType this.child)
      : isInt64 = false,
        isClass = false;
  DartType.cl(this.baseType)
      : isInt64 = false,
        isClass = true,
        child = null;

  final String baseType;
  final bool isInt64;
  final DartType? child;
  final bool isClass;

  static DartType getBuiltInDartType(String type) {
    switch (type) {
      case 'int64':
        return DartType('int', true);
      case 'int':
      case 'int32':
      case 'int53':
      case 'long':
        return DartType('int', false);
      case 'double':
        return DartType('double', false);
      case 'string':
      case 'bytes':
        return DartType('String', false);
      case 'Bool':
        return DartType('bool', false);
      case "error":
        return DartType.cl('TdError');
      case var v when v.startsWith('vector'):
        final subTypeName = type.substring(7, type.length - 1);
        final subType = getBuiltInDartType(subTypeName);
        return DartType.list(type, subType);
      default:
        if (type.isEmpty) {
          return DartType("", false);
        }
        final t = '${type[0].toUpperCase()}${type.substring(1)}';
        return DartType.cl(t);
    }
  }

  @override
  String toString() {
    if (child case var child?) {
      return 'List<$child>';
    }

    return baseType;
  }

  String fromJson(String argKey) {
    if (isClass) {
      return "$baseType.fromJson(json['$argKey'] ?? {})";
    }

    if (isInt64) {
      return "int.tryParse(json['$argKey'] ?? '') ?? 0";
    }

    switch (child) {
      case DartType child when child.isInt64:
        return "json['$argKey'] == null ? <$child>[] :(json['$argKey'] as List).map((e) => int.tryParse( e ?? '') ?? 0).toList()";
      case DartType child when child.isClass:
        return "json['$argKey'] == null ? <$child>[] :(json['$argKey'] as List).map((e) => ${child.baseType}.fromJson(e ?? {})).toList()";
      case DartType child:
        return "json['$argKey'] == null ? <$child>[] :(json['$argKey'] as List).map((e) => ${child.fromList()}).toList()";
    }

    final defaultValue = switch (baseType) {
      'int' || 'double' => ' ?? 0',
      'String' => " ?? ''",
      'bool' => ' ?? false',
      _ => '',
    };

    return 'json[\'$argKey\']$defaultValue';
  }

  String fromList() {
    if (isClass) {
      return "$baseType.fromJson(e ?? {})";
    }

    if (isInt64) {
      return "int.tryParse(e ?? '') ?? 0";
    }

    switch (child) {
      case DartType child when child.isInt64:
        return "e == null ? <$child>[] : (e as List).map((e) => int.tryParse( e ?? '') ?? 0).toList()";
      case DartType child when child.isClass:
        return "e == null ? <$child>[] : (e as List).map((e) => ${child.baseType}.fromJson(e ?? {})).toList()";
      case DartType child:
        return "e == null ? <$child>[] : (e as List).map((e) => ${child.fromList()}).toList()";
    }

    final defaultValue = switch (baseType) {
      'int' || 'double' => ' ?? 0',
      'String' => " ?? ''",
      'bool' => ' ?? false',
      _ when isClass => ' ?? {}',
      _ => '',
    };

    return '(e $defaultValue) as ${toString()}';
  }

  String toJson(String argKey, bool optional) {
    final o = optional ? '?' : '';
    if (isClass) {
      return '$argKey$o.toJson()';
    }
    if (isInt64) {
      return argKey;
    }
    switch (child) {
      case DartType child when child.isInt64:
        return "$argKey$o.map((e) => '\$e').toList()";
      case DartType child when child.isClass:
        return "$argKey$o.map((e) => e.toJson()).toList()";
    }

    return argKey;
  }
}
