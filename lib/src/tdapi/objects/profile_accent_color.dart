import '../tdapi.dart';

class ProfileAccentColor extends TdObject {

  /// Contains information about supported accent color for user profile photo background
  const ProfileAccentColor({
    required this.id,
    required this.lightThemeColors,
    required this.darkThemeColors,
    required this.minSupergroupChatBoostLevel,
    required this.minChannelChatBoostLevel,
  });
  
  /// [id] Profile accent color identifier
  final int id;

  /// [lightThemeColors] Accent colors expected to be used in light themes
  final ProfileAccentColors lightThemeColors;

  /// [darkThemeColors] Accent colors expected to be used in dark themes
  final ProfileAccentColors darkThemeColors;

  /// [minSupergroupChatBoostLevel] The minimum chat boost level required to use the color in a supergroup chat
  final int minSupergroupChatBoostLevel;

  /// [minChannelChatBoostLevel] The minimum chat boost level required to use the color in a channel chat
  final int minChannelChatBoostLevel;
  
  /// Parse from a json
  factory ProfileAccentColor.fromJson(Map<String, dynamic> json) => ProfileAccentColor(
    id: json['id'],
    lightThemeColors: ProfileAccentColors.fromJson(json['light_theme_colors']),
    darkThemeColors: ProfileAccentColors.fromJson(json['dark_theme_colors']),
    minSupergroupChatBoostLevel: json['min_supergroup_chat_boost_level'],
    minChannelChatBoostLevel: json['min_channel_chat_boost_level'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "light_theme_colors": lightThemeColors.toJson(),
      "dark_theme_colors": darkThemeColors.toJson(),
      "min_supergroup_chat_boost_level": minSupergroupChatBoostLevel,
      "min_channel_chat_boost_level": minChannelChatBoostLevel,
    };
  }
  
  ProfileAccentColor copyWith({
    int? id,
    ProfileAccentColors? lightThemeColors,
    ProfileAccentColors? darkThemeColors,
    int? minSupergroupChatBoostLevel,
    int? minChannelChatBoostLevel,
  }) => ProfileAccentColor(
    id: id ?? this.id,
    lightThemeColors: lightThemeColors ?? this.lightThemeColors,
    darkThemeColors: darkThemeColors ?? this.darkThemeColors,
    minSupergroupChatBoostLevel: minSupergroupChatBoostLevel ?? this.minSupergroupChatBoostLevel,
    minChannelChatBoostLevel: minChannelChatBoostLevel ?? this.minChannelChatBoostLevel,
  );

  static const CONSTRUCTOR = 'profileAccentColor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
