import '../tdapi.dart';

class Thumbnail extends TdObject {
  /// Represents a thumbnail
  const Thumbnail({
    required this.format,
    required this.width,
    required this.height,
    required this.file,
  });

  /// [format] Thumbnail format
  final ThumbnailFormat format;

  /// [width] Thumbnail width
  final int width;

  /// [height] Thumbnail height
  final int height;

  /// [file] The thumbnail
  final File file;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        format: ThumbnailFormat.fromJson(json['format'] ?? {}),
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        file: File.fromJson(json['file'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "format": format.toJson(),
      "width": width,
      "height": height,
      "file": file.toJson(),
    };
  }

  Thumbnail copyWith({
    ThumbnailFormat? format,
    int? width,
    int? height,
    File? file,
  }) {
    return Thumbnail(
      format: format ?? this.format,
      width: width ?? this.width,
      height: height ?? this.height,
      file: file ?? this.file,
    );
  }

  static const CONSTRUCTOR = 'thumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
