import '../tdapi.dart';

class SetAccentColor extends TdFunction {
  /// Changes accent color and background custom emoji for the current user; for Telegram Premium users only
  const SetAccentColor({
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
  });

  /// [accentColorId] Identifier of the accent color to use
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "accent_color_id": accentColorId,
      "background_custom_emoji_id": backgroundCustomEmojiId,
      "@extra": extra,
    };
  }

  SetAccentColor copyWith({
    int? accentColorId,
    int? backgroundCustomEmojiId,
  }) {
    return SetAccentColor(
      accentColorId: accentColorId ?? this.accentColorId,
      backgroundCustomEmojiId:
          backgroundCustomEmojiId ?? this.backgroundCustomEmojiId,
    );
  }

  static const CONSTRUCTOR = 'setAccentColor';

  @override
  String getConstructor() => CONSTRUCTOR;
}
