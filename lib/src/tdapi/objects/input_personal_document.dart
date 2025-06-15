import '../tdapi.dart';

class InputPersonalDocument extends TdObject {
  /// A personal document to be saved to Telegram Passport
  const InputPersonalDocument({
    required this.files,
    required this.translation,
  });

  /// [files] List of files containing the pages of the document
  final List<InputFile> files;

  /// [translation] List of files containing a certified English translation of the document
  final List<InputFile> translation;

  factory InputPersonalDocument.fromJson(Map<String, dynamic> json) =>
      InputPersonalDocument(
        files: json['files'] == null
            ? <InputFile>[]
            : (json['files'] as List)
                .map((e) => InputFile.fromJson(e ?? {}))
                .toList(),
        translation: json['translation'] == null
            ? <InputFile>[]
            : (json['translation'] as List)
                .map((e) => InputFile.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "files": files.map((e) => e.toJson()).toList(),
      "translation": translation.map((e) => e.toJson()).toList(),
    };
  }

  InputPersonalDocument copyWith({
    List<InputFile>? files,
    List<InputFile>? translation,
  }) {
    return InputPersonalDocument(
      files: files ?? this.files,
      translation: translation ?? this.translation,
    );
  }

  static const CONSTRUCTOR = 'inputPersonalDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}
