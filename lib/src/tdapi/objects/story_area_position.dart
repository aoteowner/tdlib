import '../tdapi.dart';

class StoryAreaPosition extends TdObject {

  /// Describes position of a clickable rectangle area on a story media
  const StoryAreaPosition({
    required this.xPercentage,
    required this.yPercentage,
    required this.widthPercentage,
    required this.heightPercentage,
    required this.rotationAngle,
    required this.cornerRadiusPercentage,
  });
  
  /// [xPercentage] The abscissa of the rectangle's center, as a percentage of the media width
  final double xPercentage;

  /// [yPercentage] The ordinate of the rectangle's center, as a percentage of the media height
  final double yPercentage;

  /// [widthPercentage] The width of the rectangle, as a percentage of the media width
  final double widthPercentage;

  /// [heightPercentage] The height of the rectangle, as a percentage of the media height
  final double heightPercentage;

  /// [rotationAngle] Clockwise rotation angle of the rectangle, in degrees; 0-360
  final double rotationAngle;

  /// [cornerRadiusPercentage] The radius of the rectangle corner rounding, as a percentage of the media width
  final double cornerRadiusPercentage;
  
  /// Parse from a json
  factory StoryAreaPosition.fromJson(Map<String, dynamic> json) => StoryAreaPosition(
    xPercentage: json['x_percentage'] ?? 0,
    yPercentage: json['y_percentage'] ?? 0,
    widthPercentage: json['width_percentage'] ?? 0,
    heightPercentage: json['height_percentage'] ?? 0,
    rotationAngle: json['rotation_angle'] ?? 0,
    cornerRadiusPercentage: json['corner_radius_percentage'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x_percentage": xPercentage,
      "y_percentage": yPercentage,
      "width_percentage": widthPercentage,
      "height_percentage": heightPercentage,
      "rotation_angle": rotationAngle,
      "corner_radius_percentage": cornerRadiusPercentage,
    };
  }
  
  StoryAreaPosition copyWith({
    double? xPercentage,
    double? yPercentage,
    double? widthPercentage,
    double? heightPercentage,
    double? rotationAngle,
    double? cornerRadiusPercentage,
  }) => StoryAreaPosition(
    xPercentage: xPercentage ?? this.xPercentage,
    yPercentage: yPercentage ?? this.yPercentage,
    widthPercentage: widthPercentage ?? this.widthPercentage,
    heightPercentage: heightPercentage ?? this.heightPercentage,
    rotationAngle: rotationAngle ?? this.rotationAngle,
    cornerRadiusPercentage: cornerRadiusPercentage ?? this.cornerRadiusPercentage,
  );

  static const CONSTRUCTOR = 'storyAreaPosition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
