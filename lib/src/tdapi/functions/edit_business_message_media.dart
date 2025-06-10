part of '../tdapi.dart';

class EditBusinessMessageMedia extends TdFunction {

  /// Edits the media content of a message with a text, an animation, an audio, a document, a photo or a video in a message sent on behalf of a business account; for bots only
  const EditBusinessMessageMedia({
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

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
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
  
  EditBusinessMessageMedia copyWith({
    String? businessConnectionId,
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditBusinessMessageMedia(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const CONSTRUCTOR = 'editBusinessMessageMedia';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
