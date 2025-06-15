import '../tdapi.dart';

class InputPaidMedia extends TdObject {
  /// Describes a paid media to be sent
  const InputPaidMedia({
    required this.type,
    required this.media,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
  });

  /// [type] Type of the media
  final InputPaidMediaType type;

  /// [media] Photo or video to be sent
  final InputFile media;

  /// [thumbnail] Media thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the media, if applicable
  final List<int> addedStickerFileIds;

  /// [width] Media width
  final int width;

  /// [height] Media height
  final int height;

  factory InputPaidMedia.fromJson(Map<String, dynamic> json) => InputPaidMedia(
        type: InputPaidMediaType.fromJson(json['type'] ?? {}),
        media: InputFile.fromJson(json['media'] ?? {}),
        thumbnail: InputThumbnail.fromJson(json['thumbnail'] ?? {}),
        addedStickerFileIds: json['added_sticker_file_ids'] == null
            ? <int>[]
            : (json['added_sticker_file_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "media": media.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds,
      "width": width,
      "height": height,
    };
  }

  InputPaidMedia copyWith({
    InputPaidMediaType? type,
    InputFile? media,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? width,
    int? height,
  }) {
    return InputPaidMedia(
      type: type ?? this.type,
      media: media ?? this.media,
      thumbnail: thumbnail ?? this.thumbnail,
      addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  static const CONSTRUCTOR = 'inputPaidMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}
