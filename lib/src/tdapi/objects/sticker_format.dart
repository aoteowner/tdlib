import '../tdapi.dart';

class StickerFormat extends TdObject {
  /// Describes format of a sticker
  const StickerFormat();

  factory StickerFormat.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StickerFormatWebp.CONSTRUCTOR:
        return StickerFormatWebp.fromJson(json);
      case StickerFormatTgs.CONSTRUCTOR:
        return StickerFormatTgs.fromJson(json);
      case StickerFormatWebm.CONSTRUCTOR:
        return StickerFormatWebm.fromJson(json);
      default:
        return const StickerFormat();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StickerFormat copyWith() {
    return const StickerFormat();
  }

  static const CONSTRUCTOR = 'stickerFormat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFormatWebp extends StickerFormat {
  /// The sticker is an image in WEBP format
  const StickerFormatWebp();

  factory StickerFormatWebp.fromJson(Map<String, dynamic> json) =>
      const StickerFormatWebp();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StickerFormatWebp copyWith() {
    return const StickerFormatWebp();
  }

  static const CONSTRUCTOR = 'stickerFormatWebp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFormatTgs extends StickerFormat {
  /// The sticker is an animation in TGS format
  const StickerFormatTgs();

  factory StickerFormatTgs.fromJson(Map<String, dynamic> json) =>
      const StickerFormatTgs();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StickerFormatTgs copyWith() {
    return const StickerFormatTgs();
  }

  static const CONSTRUCTOR = 'stickerFormatTgs';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFormatWebm extends StickerFormat {
  /// The sticker is a video in WEBM format
  const StickerFormatWebm();

  factory StickerFormatWebm.fromJson(Map<String, dynamic> json) =>
      const StickerFormatWebm();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StickerFormatWebm copyWith() {
    return const StickerFormatWebm();
  }

  static const CONSTRUCTOR = 'stickerFormatWebm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
