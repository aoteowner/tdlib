import '../tdapi.dart';

class SetPaidMessageReactionType extends TdFunction {

  /// Changes type of paid message reaction of the current user on a message. The message must have paid reaction added by the current user
  const SetPaidMessageReactionType({
    required this.chatId,
    required this.messageId,
    required this.type,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [type] New type of the paid reaction
  final PaidReactionType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  SetPaidMessageReactionType copyWith({
    int? chatId,
    int? messageId,
    PaidReactionType? type,
  }) => SetPaidMessageReactionType(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'setPaidMessageReactionType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
