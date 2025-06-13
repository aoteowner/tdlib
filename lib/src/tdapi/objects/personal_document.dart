import '../tdapi.dart';

class PersonalDocument extends TdObject {

  /// A personal document, containing some information about a user
  const PersonalDocument({
    required this.files,
    required this.translation,
  });
  
  /// [files] List of files containing the pages of the document 
  final List<DatedFile> files;

  /// [translation] List of files containing a certified English translation of the document
  final List<DatedFile> translation;
  
  /// Parse from a json
  factory PersonalDocument.fromJson(Map<String, dynamic> json) => PersonalDocument(
    files: json['files'] == null ? [] :(json['files'] as List).map((e) => DatedFile.fromJson(e ?? {})).toList(),
    translation: json['translation'] == null ? [] :(json['translation'] as List).map((e) => DatedFile.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "files": files.map((e) => e.toJson()).toList(),
      "translation": translation.map((e) => e.toJson()).toList(),
    };
  }
  
  PersonalDocument copyWith({
    List<DatedFile>? files,
    List<DatedFile>? translation,
  }) => PersonalDocument(
    files: files ?? this.files,
    translation: translation ?? this.translation,
  );

  static const CONSTRUCTOR = 'personalDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
