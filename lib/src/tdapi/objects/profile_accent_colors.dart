import '../tdapi.dart';

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
    paletteColors: json['palette_colors'] == null ? <int>[] :(json['palette_colors'] as List).map((e) => (e  ?? 0) as int).toList(),
    backgroundColors: json['background_colors'] == null ? <int>[] :(json['background_colors'] as List).map((e) => (e  ?? 0) as int).toList(),
    storyColors: json['story_colors'] == null ? <int>[] :(json['story_colors'] as List).map((e) => (e  ?? 0) as int).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "palette_colors": paletteColors,
      "background_colors": backgroundColors,
      "story_colors": storyColors,
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
