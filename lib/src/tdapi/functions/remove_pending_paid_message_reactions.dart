import '../tdapi.dart';

class RemovePendingPaidMessageReactions extends TdFunction {
  /// Removes all pending paid reactions on a message
  const RemovePendingPaidMessageReactions({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
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

  RemovePendingPaidMessageReactions copyWith({
    int? chatId,
    int? messageId,
  }) {
    return RemovePendingPaidMessageReactions(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'removePendingPaidMessageReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
