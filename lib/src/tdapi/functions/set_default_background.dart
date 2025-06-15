import '../tdapi.dart';

class SetDefaultBackground extends TdFunction {
  /// Sets default background for chats; adds the background to the list of installed backgrounds
  const SetDefaultBackground({
    this.background,
    this.type,
    required this.forDarkTheme,
  });

  /// [background] The input background to use; pass null to create a new filled background
  final InputBackground? background;

  /// [type] Background type; pass null to use the default type of the remote background; backgroundTypeChatTheme isn't supported
  final BackgroundType? type;

  /// [forDarkTheme] Pass true if the background is set for a dark theme
  final bool forDarkTheme;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background": background?.toJson(),
      "type": type?.toJson(),
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
    };
  }

  SetDefaultBackground copyWith({
    InputBackground? background,
    BackgroundType? type,
    bool? forDarkTheme,
  }) {
    return SetDefaultBackground(
      background: background ?? this.background,
      type: type ?? this.type,
      forDarkTheme: forDarkTheme ?? this.forDarkTheme,
    );
  }

  static const CONSTRUCTOR = 'setDefaultBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
