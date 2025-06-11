import '../tdapi.dart';

class DeclineGroupCallInvitation extends TdFunction {

  /// Declines an invitation to an active group call via messageGroupCall. Can be called both by the sender and the receiver of the invitation
  const DeclineGroupCallInvitation({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message of the type messageGroupCall
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
  
  DeclineGroupCallInvitation copyWith({
    int? chatId,
    int? messageId,
  }) => DeclineGroupCallInvitation(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'declineGroupCallInvitation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
