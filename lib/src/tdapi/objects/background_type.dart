import '../tdapi.dart';

class BackgroundType extends TdObject {

  /// Describes the type of background
  const BackgroundType();
  
  /// a BackgroundType return type can be :
  /// * [BackgroundTypeWallpaper]
  /// * [BackgroundTypePattern]
  /// * [BackgroundTypeFill]
  /// * [BackgroundTypeChatTheme]
  factory BackgroundType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BackgroundTypeWallpaper.CONSTRUCTOR:
        return BackgroundTypeWallpaper.fromJson(json);
      case BackgroundTypePattern.CONSTRUCTOR:
        return BackgroundTypePattern.fromJson(json);
      case BackgroundTypeFill.CONSTRUCTOR:
        return BackgroundTypeFill.fromJson(json);
      case BackgroundTypeChatTheme.CONSTRUCTOR:
        return BackgroundTypeChatTheme.fromJson(json);
      default:
        return const BackgroundType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  BackgroundType copyWith() => const BackgroundType();

  static const CONSTRUCTOR = 'backgroundType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BackgroundTypeWallpaper extends BackgroundType {

  /// A wallpaper in JPEG format
  const BackgroundTypeWallpaper({
    required this.isBlurred,
    required this.isMoving,
  });
  
  /// [isBlurred] True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12
  final bool isBlurred;

  /// [isMoving] True, if the background needs to be slightly moved when device is tilted
  final bool isMoving;
  
  /// Parse from a json
  factory BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) => BackgroundTypeWallpaper(
    isBlurred: json['is_blurred'] ?? false,
    isMoving: json['is_moving'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_blurred": isBlurred,
      "is_moving": isMoving,
    };
  }
  
  @override
  BackgroundTypeWallpaper copyWith({
    bool? isBlurred,
    bool? isMoving,
  }) => BackgroundTypeWallpaper(
    isBlurred: isBlurred ?? this.isBlurred,
    isMoving: isMoving ?? this.isMoving,
  );

  static const CONSTRUCTOR = 'backgroundTypeWallpaper';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BackgroundTypePattern extends BackgroundType {

  /// A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user
  const BackgroundTypePattern({
    required this.fill,
    required this.intensity,
    required this.isInverted,
    required this.isMoving,
  });
  
  /// [fill] Fill of the background
  final BackgroundFill fill;

  /// [intensity] Intensity of the pattern when it is shown above the filled background; 0-100
  final int intensity;

  /// [isInverted] True, if the background fill must be applied only to the pattern itself. All other pixels are black in this case. For dark themes only
  final bool isInverted;

  /// [isMoving] True, if the background needs to be slightly moved when device is tilted
  final bool isMoving;
  
  /// Parse from a json
  factory BackgroundTypePattern.fromJson(Map<String, dynamic> json) => BackgroundTypePattern(
    fill: BackgroundFill.fromJson(json['fill'] ?? {}),
    intensity: json['intensity'] ?? 0,
    isInverted: json['is_inverted'] ?? false,
    isMoving: json['is_moving'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "fill": fill.toJson(),
      "intensity": intensity,
      "is_inverted": isInverted,
      "is_moving": isMoving,
    };
  }
  
  @override
  BackgroundTypePattern copyWith({
    BackgroundFill? fill,
    int? intensity,
    bool? isInverted,
    bool? isMoving,
  }) => BackgroundTypePattern(
    fill: fill ?? this.fill,
    intensity: intensity ?? this.intensity,
    isInverted: isInverted ?? this.isInverted,
    isMoving: isMoving ?? this.isMoving,
  );

  static const CONSTRUCTOR = 'backgroundTypePattern';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BackgroundTypeFill extends BackgroundType {

  /// A filled background
  const BackgroundTypeFill({
    required this.fill,
  });
  
  /// [fill] The background fill
  final BackgroundFill fill;
  
  /// Parse from a json
  factory BackgroundTypeFill.fromJson(Map<String, dynamic> json) => BackgroundTypeFill(
    fill: BackgroundFill.fromJson(json['fill'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "fill": fill.toJson(),
    };
  }
  
  @override
  BackgroundTypeFill copyWith({
    BackgroundFill? fill,
  }) => BackgroundTypeFill(
    fill: fill ?? this.fill,
  );

  static const CONSTRUCTOR = 'backgroundTypeFill';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BackgroundTypeChatTheme extends BackgroundType {

  /// A background from a chat theme; can be used only as a chat background in channels
  const BackgroundTypeChatTheme({
    required this.themeName,
  });
  
  /// [themeName] Name of the chat theme
  final String themeName;
  
  /// Parse from a json
  factory BackgroundTypeChatTheme.fromJson(Map<String, dynamic> json) => BackgroundTypeChatTheme(
    themeName: json['theme_name'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "theme_name": themeName,
    };
  }
  
  @override
  BackgroundTypeChatTheme copyWith({
    String? themeName,
  }) => BackgroundTypeChatTheme(
    themeName: themeName ?? this.themeName,
  );

  static const CONSTRUCTOR = 'backgroundTypeChatTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
