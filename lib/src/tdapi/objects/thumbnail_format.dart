import '../tdapi.dart';

class ThumbnailFormat extends TdObject {
  /// Describes format of a thumbnail
  const ThumbnailFormat();

  factory ThumbnailFormat.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ThumbnailFormatJpeg.CONSTRUCTOR:
        return ThumbnailFormatJpeg.fromJson(json);
      case ThumbnailFormatGif.CONSTRUCTOR:
        return ThumbnailFormatGif.fromJson(json);
      case ThumbnailFormatMpeg4.CONSTRUCTOR:
        return ThumbnailFormatMpeg4.fromJson(json);
      case ThumbnailFormatPng.CONSTRUCTOR:
        return ThumbnailFormatPng.fromJson(json);
      case ThumbnailFormatTgs.CONSTRUCTOR:
        return ThumbnailFormatTgs.fromJson(json);
      case ThumbnailFormatWebm.CONSTRUCTOR:
        return ThumbnailFormatWebm.fromJson(json);
      case ThumbnailFormatWebp.CONSTRUCTOR:
        return ThumbnailFormatWebp.fromJson(json);
      default:
        return const ThumbnailFormat();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ThumbnailFormat copyWith() {
    return const ThumbnailFormat();
  }

  static const CONSTRUCTOR = 'thumbnailFormat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatJpeg extends ThumbnailFormat {
  /// The thumbnail is in JPEG format
  const ThumbnailFormatJpeg();

  factory ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json) =>
      const ThumbnailFormatJpeg();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ThumbnailFormatJpeg copyWith() {
    return const ThumbnailFormatJpeg();
  }

  static const CONSTRUCTOR = 'thumbnailFormatJpeg';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatGif extends ThumbnailFormat {
  /// The thumbnail is in static GIF format. It will be used only for some bot inline query results
  const ThumbnailFormatGif();

  factory ThumbnailFormatGif.fromJson(Map<String, dynamic> json) =>
      const ThumbnailFormatGif();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ThumbnailFormatGif copyWith() {
    return const ThumbnailFormatGif();
  }

  static const CONSTRUCTOR = 'thumbnailFormatGif';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
  const ThumbnailFormatMpeg4();

  factory ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json) =>
      const ThumbnailFormatMpeg4();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ThumbnailFormatMpeg4 copyWith() {
    return const ThumbnailFormatMpeg4();
  }

  static const CONSTRUCTOR = 'thumbnailFormatMpeg4';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatPng extends ThumbnailFormat {
  /// The thumbnail is in PNG format. It will be used only for background patterns
  const ThumbnailFormatPng();

  factory ThumbnailFormatPng.fromJson(Map<String, dynamic> json) =>
      const ThumbnailFormatPng();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ThumbnailFormatPng copyWith() {
    return const ThumbnailFormatPng();
  }

  static const CONSTRUCTOR = 'thumbnailFormatPng';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatTgs extends ThumbnailFormat {
  /// The thumbnail is in TGS format. It will be used only for sticker sets
  const ThumbnailFormatTgs();

  factory ThumbnailFormatTgs.fromJson(Map<String, dynamic> json) =>
      const ThumbnailFormatTgs();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ThumbnailFormatTgs copyWith() {
    return const ThumbnailFormatTgs();
  }

  static const CONSTRUCTOR = 'thumbnailFormatTgs';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatWebm extends ThumbnailFormat {
  /// The thumbnail is in WEBM format. It will be used only for sticker sets
  const ThumbnailFormatWebm();

  factory ThumbnailFormatWebm.fromJson(Map<String, dynamic> json) =>
      const ThumbnailFormatWebm();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ThumbnailFormatWebm copyWith() {
    return const ThumbnailFormatWebm();
  }

  static const CONSTRUCTOR = 'thumbnailFormatWebm';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatWebp extends ThumbnailFormat {
  /// The thumbnail is in WEBP format. It will be used only for some stickers and sticker sets
  const ThumbnailFormatWebp();

  factory ThumbnailFormatWebp.fromJson(Map<String, dynamic> json) =>
      const ThumbnailFormatWebp();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ThumbnailFormatWebp copyWith() {
    return const ThumbnailFormatWebp();
  }

  static const CONSTRUCTOR = 'thumbnailFormatWebp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
