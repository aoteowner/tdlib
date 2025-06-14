import '../tdapi.dart';

class GetRepliedMessage extends TdFunction {
  /// Returns information about a non-bundled message that is replied by a given message. Also, returns the pinned message, the game message, the invoice message,. the message with a previously set same background, the giveaway message, and the topic creation message for messages of the types. messagePinMessage, messageGameScore, messagePaymentSuccessful, messageChatSetBackground, messageGiveawayCompleted and topic messages without non-bundled replied message respectively.. Returns a 404 error if the message doesn't exist
  const GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the reply message
  final int messageId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }

  GetRepliedMessage copyWith({
    int? chatId,
    int? messageId,
  }) {
    return GetRepliedMessage(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'getRepliedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
