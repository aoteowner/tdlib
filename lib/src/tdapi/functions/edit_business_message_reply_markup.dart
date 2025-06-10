part of '../tdapi.dart';

class EditBusinessMessageReplyMarkup extends TdFunction {

  /// Edits the reply markup of a message sent on behalf of a business account; for bots only
  const EditBusinessMessageReplyMarkup({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
  });
  
  /// [businessConnectionId] Unique identifier of business connection on behalf of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "@extra": extra,
    };
  }
  
  EditBusinessMessageReplyMarkup copyWith({
    String? businessConnectionId,
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
  }) => EditBusinessMessageReplyMarkup(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
  );

  static const CONSTRUCTOR = 'editBusinessMessageReplyMarkup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
