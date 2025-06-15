import '../tdapi.dart';

class SetChatEmojiStatus extends TdFunction {
  /// Changes the emoji status of a chat. Use chatBoostLevelFeatures.can_set_emoji_status to check whether an emoji status can be set. Requires can_change_info administrator right
  const SetChatEmojiStatus({
    required this.chatId,
    this.emojiStatus,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [emojiStatus] New emoji status; pass null to remove emoji status
  final EmojiStatus? emojiStatus;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "emoji_status": emojiStatus?.toJson(),
      "@extra": extra,
    };
  }

  SetChatEmojiStatus copyWith({
    int? chatId,
    EmojiStatus? emojiStatus,
  }) {
    return SetChatEmojiStatus(
      chatId: chatId ?? this.chatId,
      emojiStatus: emojiStatus ?? this.emojiStatus,
    );
  }

  static const CONSTRUCTOR = 'setChatEmojiStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
