import '../tdapi.dart';

class SetStickerSetThumbnail extends TdFunction {
  /// Sets a sticker set thumbnail
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
    this.format,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  /// [thumbnail] Thumbnail to set; pass null to remove the sticker set thumbnail
  final InputFile? thumbnail;

  /// [format] Format of the thumbnail; pass null if thumbnail is removed
  final StickerFormat? format;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "name": name,
      "thumbnail": thumbnail?.toJson(),
      "format": format?.toJson(),
      "@extra": extra,
    };
  }

  SetStickerSetThumbnail copyWith({
    int? userId,
    String? name,
    InputFile? thumbnail,
    StickerFormat? format,
  }) {
    return SetStickerSetThumbnail(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      thumbnail: thumbnail ?? this.thumbnail,
      format: format ?? this.format,
    );
  }

  static const CONSTRUCTOR = 'setStickerSetThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
