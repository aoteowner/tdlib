import '../tdapi.dart';

class ChatBackground extends TdObject {
  /// Describes a background set for a specific chat
  const ChatBackground({
    required this.background,
    required this.darkThemeDimming,
  });

  /// [background] The background
  final Background background;

  /// [darkThemeDimming] Dimming of the background in dark themes, as a percentage; 0-100. Applied only to Wallpaper and Fill types of background
  final int darkThemeDimming;

  factory ChatBackground.fromJson(Map<String, dynamic> json) => ChatBackground(
        background: Background.fromJson(json['background'] ?? {}),
        darkThemeDimming: json['dark_theme_dimming'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background": background.toJson(),
      "dark_theme_dimming": darkThemeDimming,
    };
  }

  ChatBackground copyWith({
    Background? background,
    int? darkThemeDimming,
  }) {
    return ChatBackground(
      background: background ?? this.background,
      darkThemeDimming: darkThemeDimming ?? this.darkThemeDimming,
    );
  }

  static const CONSTRUCTOR = 'chatBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
