part of '../tdapi.dart';

class EditBusinessMessageText extends TdFunction {

  /// Edits the text of a text or game message sent on behalf of a business account; for bots only
  const EditBusinessMessageText({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// [businessConnectionId] Unique identifier of business connection on behalf of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New text content of the message. Must be of type inputMessageText
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }
  
  EditBusinessMessageText copyWith({
    String? businessConnectionId,
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditBusinessMessageText(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const CONSTRUCTOR = 'editBusinessMessageText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
