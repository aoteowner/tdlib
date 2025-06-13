import '../tdapi.dart';

class AccentColor extends TdObject {

  /// Contains information about supported accent color for user/chat name, background of empty chat photo, replies to messages and link previews
  const AccentColor({
    required this.id,
    required this.builtInAccentColorId,
    required this.lightThemeColors,
    required this.darkThemeColors,
    required this.minChannelChatBoostLevel,
  });
  
  /// [id] Accent color identifier
  final int id;

  /// [builtInAccentColorId] Identifier of a built-in color to use in places, where only one color is needed; 0-6
  final int builtInAccentColorId;

  /// [lightThemeColors] The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in light themes
  final List<int> lightThemeColors;

  /// [darkThemeColors] The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in dark themes
  final List<int> darkThemeColors;

  /// [minChannelChatBoostLevel] The minimum chat boost level required to use the color in a channel chat
  final int minChannelChatBoostLevel;
  
  /// Parse from a json
  factory AccentColor.fromJson(Map<String, dynamic> json) => AccentColor(
    id: json['id'] ?? 0,
    builtInAccentColorId: json['built_in_accent_color_id'] ?? 0,
    lightThemeColors: json['light_theme_colors'] == null ? <int>[] :(json['light_theme_colors'] as List).map((e) => (e  ?? 0) as int).toList(),
    darkThemeColors: json['dark_theme_colors'] == null ? <int>[] :(json['dark_theme_colors'] as List).map((e) => (e  ?? 0) as int).toList(),
    minChannelChatBoostLevel: json['min_channel_chat_boost_level'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "built_in_accent_color_id": builtInAccentColorId,
      "light_theme_colors": lightThemeColors,
      "dark_theme_colors": darkThemeColors,
      "min_channel_chat_boost_level": minChannelChatBoostLevel,
    };
  }
  
  AccentColor copyWith({
    int? id,
    int? builtInAccentColorId,
    List<int>? lightThemeColors,
    List<int>? darkThemeColors,
    int? minChannelChatBoostLevel,
  }) => AccentColor(
    id: id ?? this.id,
    builtInAccentColorId: builtInAccentColorId ?? this.builtInAccentColorId,
    lightThemeColors: lightThemeColors ?? this.lightThemeColors,
    darkThemeColors: darkThemeColors ?? this.darkThemeColors,
    minChannelChatBoostLevel: minChannelChatBoostLevel ?? this.minChannelChatBoostLevel,
  );

  static const CONSTRUCTOR = 'accentColor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
