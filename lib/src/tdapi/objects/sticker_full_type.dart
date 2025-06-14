import '../tdapi.dart';

class StickerFullType extends TdObject {
  /// Contains full information about sticker type
  const StickerFullType();

  factory StickerFullType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StickerFullTypeRegular.CONSTRUCTOR:
        return StickerFullTypeRegular.fromJson(json);
      case StickerFullTypeMask.CONSTRUCTOR:
        return StickerFullTypeMask.fromJson(json);
      case StickerFullTypeCustomEmoji.CONSTRUCTOR:
        return StickerFullTypeCustomEmoji.fromJson(json);
      default:
        return const StickerFullType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StickerFullType copyWith() {
    return const StickerFullType();
  }

  static const CONSTRUCTOR = 'stickerFullType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFullTypeRegular extends StickerFullType {
  /// The sticker is a regular sticker
  const StickerFullTypeRegular({
    this.premiumAnimation,
  });

  /// [premiumAnimation] Premium animation of the sticker; may be null. If present, only Telegram Premium users can use the sticker
  final File? premiumAnimation;

  factory StickerFullTypeRegular.fromJson(Map<String, dynamic> json) =>
      StickerFullTypeRegular(
        premiumAnimation: File.fromJson(json['premium_animation'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "premium_animation": premiumAnimation?.toJson(),
    };
  }

  @override
  StickerFullTypeRegular copyWith({
    File? premiumAnimation,
  }) {
    return StickerFullTypeRegular(
      premiumAnimation: premiumAnimation ?? this.premiumAnimation,
    );
  }

  static const CONSTRUCTOR = 'stickerFullTypeRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFullTypeMask extends StickerFullType {
  /// The sticker is a mask in WEBP format to be placed on photos or videos
  const StickerFullTypeMask({
    this.maskPosition,
  });

  /// [maskPosition] Position where the mask is placed; may be null
  final MaskPosition? maskPosition;

  factory StickerFullTypeMask.fromJson(Map<String, dynamic> json) =>
      StickerFullTypeMask(
        maskPosition: MaskPosition.fromJson(json['mask_position'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mask_position": maskPosition?.toJson(),
    };
  }

  @override
  StickerFullTypeMask copyWith({
    MaskPosition? maskPosition,
  }) {
    return StickerFullTypeMask(
      maskPosition: maskPosition ?? this.maskPosition,
    );
  }

  static const CONSTRUCTOR = 'stickerFullTypeMask';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFullTypeCustomEmoji extends StickerFullType {
  /// The sticker is a custom emoji to be used inside message text and caption. Currently, only Telegram Premium users can use custom emoji
  const StickerFullTypeCustomEmoji({
    required this.customEmojiId,
    required this.needsRepainting,
  });

  /// [customEmojiId] Identifier of the custom emoji
  final int customEmojiId;

  /// [needsRepainting] True, if the sticker must be repainted to a text color in messages, the color of the Telegram Premium badge in emoji status, white color on chat photos, or another appropriate color in other places
  final bool needsRepainting;

  factory StickerFullTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      StickerFullTypeCustomEmoji(
        customEmojiId: int.tryParse(json['custom_emoji_id'] ?? '') ?? 0,
        needsRepainting: json['needs_repainting'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_id": customEmojiId,
      "needs_repainting": needsRepainting,
    };
  }

  @override
  StickerFullTypeCustomEmoji copyWith({
    int? customEmojiId,
    bool? needsRepainting,
  }) {
    return StickerFullTypeCustomEmoji(
      customEmojiId: customEmojiId ?? this.customEmojiId,
      needsRepainting: needsRepainting ?? this.needsRepainting,
    );
  }

  static const CONSTRUCTOR = 'stickerFullTypeCustomEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}
