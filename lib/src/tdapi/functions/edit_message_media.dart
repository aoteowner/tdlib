import '../tdapi.dart';

class EditMessageMedia extends TdFunction {
  /// Edits the media content of a message, including message caption. If only the caption needs to be edited, use editMessageCaption instead.. The type of message content in an album can't be changed with exception of replacing a photo with a video or vice versa. Returns the edited message after the edit is completed on the server side
  const EditMessageMedia({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_edit_media to check whether the message can be edited
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }

  EditMessageMedia copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return EditMessageMedia(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'editMessageMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}
