import '../tdapi.dart';

class StickerType extends TdObject {
  /// Describes type of sticker
  const StickerType();

  factory StickerType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StickerTypeRegular.CONSTRUCTOR:
        return StickerTypeRegular.fromJson(json);
      case StickerTypeMask.CONSTRUCTOR:
        return StickerTypeMask.fromJson(json);
      case StickerTypeCustomEmoji.CONSTRUCTOR:
        return StickerTypeCustomEmoji.fromJson(json);
      default:
        return const StickerType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StickerType copyWith() {
    return const StickerType();
  }

  static const CONSTRUCTOR = 'stickerType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerTypeRegular extends StickerType {
  /// The sticker is a regular sticker
  const StickerTypeRegular();

  factory StickerTypeRegular.fromJson(Map<String, dynamic> json) =>
      const StickerTypeRegular();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StickerTypeRegular copyWith() {
    return const StickerTypeRegular();
  }

  static const CONSTRUCTOR = 'stickerTypeRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerTypeMask extends StickerType {
  /// The sticker is a mask in WEBP format to be placed on photos or videos
  const StickerTypeMask();

  factory StickerTypeMask.fromJson(Map<String, dynamic> json) =>
      const StickerTypeMask();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StickerTypeMask copyWith() {
    return const StickerTypeMask();
  }

  static const CONSTRUCTOR = 'stickerTypeMask';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerTypeCustomEmoji extends StickerType {
  /// The sticker is a custom emoji to be used inside message text and caption
  const StickerTypeCustomEmoji();

  factory StickerTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      const StickerTypeCustomEmoji();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StickerTypeCustomEmoji copyWith() {
    return const StickerTypeCustomEmoji();
  }

  static const CONSTRUCTOR = 'stickerTypeCustomEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}
