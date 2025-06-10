part of '../tdapi.dart';

class GetMessageReadDate extends TdFunction {

  /// Returns read date of a recent outgoing message in a private chat. The method can be called if messageProperties.can_get_read_date == true
  const GetMessageReadDate({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Chat identifier
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
  
  GetMessageReadDate copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessageReadDate(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'getMessageReadDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
