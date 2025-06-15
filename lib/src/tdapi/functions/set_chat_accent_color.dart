import '../tdapi.dart';

class SetChatAccentColor extends TdFunction {
  /// Changes accent color and background custom emoji of a channel chat. Requires can_change_info administrator right
  const SetChatAccentColor({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] Identifier of the accent color to use. The chat must have at least accentColor.min_channel_chat_boost_level boost level to pass the corresponding color
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none. Use chatBoostLevelFeatures.can_set_background_custom_emoji to check whether a custom emoji can be set
  final int backgroundCustomEmojiId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "accent_color_id": accentColorId,
      "background_custom_emoji_id": backgroundCustomEmojiId,
      "@extra": extra,
    };
  }

  SetChatAccentColor copyWith({
    int? chatId,
    int? accentColorId,
    int? backgroundCustomEmojiId,
  }) {
    return SetChatAccentColor(
      chatId: chatId ?? this.chatId,
      accentColorId: accentColorId ?? this.accentColorId,
      backgroundCustomEmojiId:
          backgroundCustomEmojiId ?? this.backgroundCustomEmojiId,
    );
  }

  static const CONSTRUCTOR = 'setChatAccentColor';

  @override
  String getConstructor() => CONSTRUCTOR;
}
