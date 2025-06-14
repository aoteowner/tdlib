import '../tdapi.dart';

class InputPassportElementErrorSource extends TdObject {
  /// Contains the description of an error in a Telegram Passport element; for bots only
  const InputPassportElementErrorSource();

  factory InputPassportElementErrorSource.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputPassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return InputPassportElementErrorSourceUnspecified.fromJson(json);
      case InputPassportElementErrorSourceDataField.CONSTRUCTOR:
        return InputPassportElementErrorSourceDataField.fromJson(json);
      case InputPassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return InputPassportElementErrorSourceFrontSide.fromJson(json);
      case InputPassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return InputPassportElementErrorSourceReverseSide.fromJson(json);
      case InputPassportElementErrorSourceSelfie.CONSTRUCTOR:
        return InputPassportElementErrorSourceSelfie.fromJson(json);
      case InputPassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return InputPassportElementErrorSourceTranslationFile.fromJson(json);
      case InputPassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return InputPassportElementErrorSourceTranslationFiles.fromJson(json);
      case InputPassportElementErrorSourceFile.CONSTRUCTOR:
        return InputPassportElementErrorSourceFile.fromJson(json);
      case InputPassportElementErrorSourceFiles.CONSTRUCTOR:
        return InputPassportElementErrorSourceFiles.fromJson(json);
      default:
        return const InputPassportElementErrorSource();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputPassportElementErrorSource copyWith() {
    return const InputPassportElementErrorSource();
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSource';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceUnspecified
    extends InputPassportElementErrorSource {
  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
  const InputPassportElementErrorSourceUnspecified({
    required this.elementHash,
  });

  /// [elementHash] Current hash of the entire element
  final String elementHash;

  factory InputPassportElementErrorSourceUnspecified.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceUnspecified(
        elementHash: json['element_hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "element_hash": elementHash,
    };
  }

  @override
  InputPassportElementErrorSourceUnspecified copyWith({
    String? elementHash,
  }) {
    return InputPassportElementErrorSourceUnspecified(
      elementHash: elementHash ?? this.elementHash,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceUnspecified';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceDataField
    extends InputPassportElementErrorSource {
  /// A data field contains an error. The error is considered resolved when the field's value changes
  const InputPassportElementErrorSourceDataField({
    required this.fieldName,
    required this.dataHash,
  });

  /// [fieldName] Field name
  final String fieldName;

  /// [dataHash] Current data hash
  final String dataHash;

  factory InputPassportElementErrorSourceDataField.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceDataField(
        fieldName: json['field_name'] ?? '',
        dataHash: json['data_hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "field_name": fieldName,
      "data_hash": dataHash,
    };
  }

  @override
  InputPassportElementErrorSourceDataField copyWith({
    String? fieldName,
    String? dataHash,
  }) {
    return InputPassportElementErrorSourceDataField(
      fieldName: fieldName ?? this.fieldName,
      dataHash: dataHash ?? this.dataHash,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceDataField';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceFrontSide
    extends InputPassportElementErrorSource {
  /// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes
  const InputPassportElementErrorSourceFrontSide({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the front side
  final String fileHash;

  factory InputPassportElementErrorSourceFrontSide.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceFrontSide(
        fileHash: json['file_hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_hash": fileHash,
    };
  }

  @override
  InputPassportElementErrorSourceFrontSide copyWith({
    String? fileHash,
  }) {
    return InputPassportElementErrorSourceFrontSide(
      fileHash: fileHash ?? this.fileHash,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceFrontSide';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceReverseSide
    extends InputPassportElementErrorSource {
  /// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes
  const InputPassportElementErrorSourceReverseSide({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the reverse side
  final String fileHash;

  factory InputPassportElementErrorSourceReverseSide.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceReverseSide(
        fileHash: json['file_hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_hash": fileHash,
    };
  }

  @override
  InputPassportElementErrorSourceReverseSide copyWith({
    String? fileHash,
  }) {
    return InputPassportElementErrorSourceReverseSide(
      fileHash: fileHash ?? this.fileHash,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceReverseSide';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceSelfie
    extends InputPassportElementErrorSource {
  /// The selfie contains an error. The error is considered resolved when the file with the selfie changes
  const InputPassportElementErrorSourceSelfie({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the selfie
  final String fileHash;

  factory InputPassportElementErrorSourceSelfie.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceSelfie(
        fileHash: json['file_hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_hash": fileHash,
    };
  }

  @override
  InputPassportElementErrorSourceSelfie copyWith({
    String? fileHash,
  }) {
    return InputPassportElementErrorSourceSelfie(
      fileHash: fileHash ?? this.fileHash,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceSelfie';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceTranslationFile
    extends InputPassportElementErrorSource {
  /// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes
  const InputPassportElementErrorSourceTranslationFile({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the translation
  final String fileHash;

  factory InputPassportElementErrorSourceTranslationFile.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceTranslationFile(
        fileHash: json['file_hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_hash": fileHash,
    };
  }

  @override
  InputPassportElementErrorSourceTranslationFile copyWith({
    String? fileHash,
  }) {
    return InputPassportElementErrorSourceTranslationFile(
      fileHash: fileHash ?? this.fileHash,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceTranslationFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceTranslationFiles
    extends InputPassportElementErrorSource {
  /// The translation of the document contains an error. The error is considered resolved when the list of files changes
  const InputPassportElementErrorSourceTranslationFiles({
    required this.fileHashes,
  });

  /// [fileHashes] Current hashes of all files with the translation
  final List<String> fileHashes;

  factory InputPassportElementErrorSourceTranslationFiles.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceTranslationFiles(
        fileHashes: json['file_hashes'] == null
            ? <String>[]
            : (json['file_hashes'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_hashes": fileHashes,
    };
  }

  @override
  InputPassportElementErrorSourceTranslationFiles copyWith({
    List<String>? fileHashes,
  }) {
    return InputPassportElementErrorSourceTranslationFiles(
      fileHashes: fileHashes ?? this.fileHashes,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceTranslationFiles';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceFile
    extends InputPassportElementErrorSource {
  /// The file contains an error. The error is considered resolved when the file changes
  const InputPassportElementErrorSourceFile({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file which has the error
  final String fileHash;

  factory InputPassportElementErrorSourceFile.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceFile(
        fileHash: json['file_hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_hash": fileHash,
    };
  }

  @override
  InputPassportElementErrorSourceFile copyWith({
    String? fileHash,
  }) {
    return InputPassportElementErrorSourceFile(
      fileHash: fileHash ?? this.fileHash,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceFiles
    extends InputPassportElementErrorSource {
  /// The list of attached files contains an error. The error is considered resolved when the file list changes
  const InputPassportElementErrorSourceFiles({
    required this.fileHashes,
  });

  /// [fileHashes] Current hashes of all attached files
  final List<String> fileHashes;

  factory InputPassportElementErrorSourceFiles.fromJson(
          Map<String, dynamic> json) =>
      InputPassportElementErrorSourceFiles(
        fileHashes: json['file_hashes'] == null
            ? <String>[]
            : (json['file_hashes'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_hashes": fileHashes,
    };
  }

  @override
  InputPassportElementErrorSourceFiles copyWith({
    List<String>? fileHashes,
  }) {
    return InputPassportElementErrorSourceFiles(
      fileHashes: fileHashes ?? this.fileHashes,
    );
  }

  static const CONSTRUCTOR = 'inputPassportElementErrorSourceFiles';

  @override
  String getConstructor() => CONSTRUCTOR;
}
