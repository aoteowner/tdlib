import '../tdapi.dart';

class Document extends TdObject {
  /// Describes a document of any type
  const Document({
    required this.fileName,
    required this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    required this.document,
  });

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  final String mimeType;

  /// [minithumbnail] Document minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null
  final Thumbnail? thumbnail;

  /// [document] File containing the document
  final File document;

  factory Document.fromJson(Map<String, dynamic> json) => Document(
        fileName: json['file_name'] ?? '',
        mimeType: json['mime_type'] ?? '',
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail'] ?? {}),
        thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? {}),
        document: File.fromJson(json['document'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_name": fileName,
      "mime_type": mimeType,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "document": document.toJson(),
    };
  }

  Document copyWith({
    String? fileName,
    String? mimeType,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? document,
  }) {
    return Document(
      fileName: fileName ?? this.fileName,
      mimeType: mimeType ?? this.mimeType,
      minithumbnail: minithumbnail ?? this.minithumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
      document: document ?? this.document,
    );
  }

  static const CONSTRUCTOR = 'document';

  @override
  String getConstructor() => CONSTRUCTOR;
}
