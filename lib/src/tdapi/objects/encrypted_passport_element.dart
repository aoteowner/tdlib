import '../tdapi.dart';

class EncryptedPassportElement extends TdObject {
  /// Contains information about an encrypted Telegram Passport element; for bots only
  const EncryptedPassportElement({
    required this.type,
    required this.data,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
    required this.files,
    required this.value,
    required this.hash,
  });

  /// [type] Type of Telegram Passport element
  final PassportElementType type;

  /// [data] Encrypted JSON-encoded data about the user
  final String data;

  /// [frontSide] The front side of an identity document
  final DatedFile frontSide;

  /// [reverseSide] The reverse side of an identity document; may be null
  final DatedFile? reverseSide;

  /// [selfie] Selfie with the document; may be null
  final DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of the document
  final List<DatedFile> translation;

  /// [files] List of attached files
  final List<DatedFile> files;

  /// [value] Unencrypted data, phone number or email address
  final String value;

  /// [hash] Hash of the entire element
  final String hash;

  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) =>
      EncryptedPassportElement(
        type: PassportElementType.fromJson(json['type'] ?? {}),
        data: json['data'] ?? '',
        frontSide: DatedFile.fromJson(json['front_side'] ?? {}),
        reverseSide: DatedFile.fromJson(json['reverse_side'] ?? {}),
        selfie: DatedFile.fromJson(json['selfie'] ?? {}),
        translation: json['translation'] == null
            ? <DatedFile>[]
            : (json['translation'] as List)
                .map((e) => DatedFile.fromJson(e ?? {}))
                .toList(),
        files: json['files'] == null
            ? <DatedFile>[]
            : (json['files'] as List)
                .map((e) => DatedFile.fromJson(e ?? {}))
                .toList(),
        value: json['value'] ?? '',
        hash: json['hash'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "data": data,
      "front_side": frontSide.toJson(),
      "reverse_side": reverseSide?.toJson(),
      "selfie": selfie?.toJson(),
      "translation": translation.map((e) => e.toJson()).toList(),
      "files": files.map((e) => e.toJson()).toList(),
      "value": value,
      "hash": hash,
    };
  }

  EncryptedPassportElement copyWith({
    PassportElementType? type,
    String? data,
    DatedFile? frontSide,
    DatedFile? reverseSide,
    DatedFile? selfie,
    List<DatedFile>? translation,
    List<DatedFile>? files,
    String? value,
    String? hash,
  }) {
    return EncryptedPassportElement(
      type: type ?? this.type,
      data: data ?? this.data,
      frontSide: frontSide ?? this.frontSide,
      reverseSide: reverseSide ?? this.reverseSide,
      selfie: selfie ?? this.selfie,
      translation: translation ?? this.translation,
      files: files ?? this.files,
      value: value ?? this.value,
      hash: hash ?? this.hash,
    );
  }

  static const CONSTRUCTOR = 'encryptedPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
