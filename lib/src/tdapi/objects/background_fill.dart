import '../tdapi.dart';

class BackgroundFill extends TdObject {
  /// Describes a fill of a background
  const BackgroundFill();

  factory BackgroundFill.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case BackgroundFillSolid.CONSTRUCTOR:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.CONSTRUCTOR:
        return BackgroundFillGradient.fromJson(json);
      case BackgroundFillFreeformGradient.CONSTRUCTOR:
        return BackgroundFillFreeformGradient.fromJson(json);
      default:
        return const BackgroundFill();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  BackgroundFill copyWith() {
    return const BackgroundFill();
  }

  static const CONSTRUCTOR = 'backgroundFill';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundFillSolid extends BackgroundFill {
  /// Describes a solid fill of a background
  const BackgroundFillSolid({
    required this.color,
  });

  /// [color] A color of the background in the RGB format
  final int color;

  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) =>
      BackgroundFillSolid(
        color: json['color'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "color": color,
    };
  }

  @override
  BackgroundFillSolid copyWith({
    int? color,
  }) {
    return BackgroundFillSolid(
      color: color ?? this.color,
    );
  }

  static const CONSTRUCTOR = 'backgroundFillSolid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundFillGradient extends BackgroundFill {
  /// Describes a gradient fill of a background
  const BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });

  /// [topColor] A top color of the background in the RGB format
  final int topColor;

  /// [bottomColor] A bottom color of the background in the RGB format
  final int bottomColor;

  /// [rotationAngle] Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45
  final int rotationAngle;

  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) =>
      BackgroundFillGradient(
        topColor: json['top_color'] ?? 0,
        bottomColor: json['bottom_color'] ?? 0,
        rotationAngle: json['rotation_angle'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "top_color": topColor,
      "bottom_color": bottomColor,
      "rotation_angle": rotationAngle,
    };
  }

  @override
  BackgroundFillGradient copyWith({
    int? topColor,
    int? bottomColor,
    int? rotationAngle,
  }) {
    return BackgroundFillGradient(
      topColor: topColor ?? this.topColor,
      bottomColor: bottomColor ?? this.bottomColor,
      rotationAngle: rotationAngle ?? this.rotationAngle,
    );
  }

  static const CONSTRUCTOR = 'backgroundFillGradient';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundFillFreeformGradient extends BackgroundFill {
  /// Describes a freeform gradient fill of a background
  const BackgroundFillFreeformGradient({
    required this.colors,
  });

  /// [colors] A list of 3 or 4 colors of the freeform gradient in the RGB format
  final List<int> colors;

  factory BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) =>
      BackgroundFillFreeformGradient(
        colors: json['colors'] == null
            ? <int>[]
            : (json['colors'] as List).map((e) => (e ?? 0) as int).toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "colors": colors,
    };
  }

  @override
  BackgroundFillFreeformGradient copyWith({
    List<int>? colors,
  }) {
    return BackgroundFillFreeformGradient(
      colors: colors ?? this.colors,
    );
  }

  static const CONSTRUCTOR = 'backgroundFillFreeformGradient';

  @override
  String getConstructor() => CONSTRUCTOR;
}
