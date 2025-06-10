part of '../tdapi.dart';

class ProfileAccentColors extends TdObject {

  /// Contains information about supported accent colors for user profile photo background in RGB format
  const ProfileAccentColors({
    required this.paletteColors,
    required this.backgroundColors,
    required this.storyColors,
  });
  
  /// [paletteColors] The list of 1-2 colors in RGB format, describing the colors, as expected to be shown in the color palette settings
  final List<int> paletteColors;

  /// [backgroundColors] The list of 1-2 colors in RGB format, describing the colors, as expected to be used for the profile photo background
  final List<int> backgroundColors;

  /// [storyColors] The list of 2 colors in RGB format, describing the colors of the gradient to be used for the unread active story indicator around profile photo
  final List<int> storyColors;
  
  /// Parse from a json
  factory ProfileAccentColors.fromJson(Map<String, dynamic> json) => ProfileAccentColors(
    paletteColors: List<int>.from((json['palette_colors'] ?? []).map((item) => item).toList()),
    backgroundColors: List<int>.from((json['background_colors'] ?? []).map((item) => item).toList()),
    storyColors: List<int>.from((json['story_colors'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "palette_colors": paletteColors.map((i) => i).toList(),
      "background_colors": backgroundColors.map((i) => i).toList(),
      "story_colors": storyColors.map((i) => i).toList(),
    };
  }
  
  ProfileAccentColors copyWith({
    List<int>? paletteColors,
    List<int>? backgroundColors,
    List<int>? storyColors,
  }) => ProfileAccentColors(
    paletteColors: paletteColors ?? this.paletteColors,
    backgroundColors: backgroundColors ?? this.backgroundColors,
    storyColors: storyColors ?? this.storyColors,
  );

  static const CONSTRUCTOR = 'profileAccentColors';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
