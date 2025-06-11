import '../tdapi.dart';

class CommitPendingPaidMessageReactions extends TdFunction {

  /// Applies all pending paid reactions on a message
  const CommitPendingPaidMessageReactions({
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
  
  CommitPendingPaidMessageReactions copyWith({
    int? chatId,
    int? messageId,
  }) => CommitPendingPaidMessageReactions(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'commitPendingPaidMessageReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
