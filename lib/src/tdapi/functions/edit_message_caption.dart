import '../tdapi.dart';

class EditMessageCaption extends TdFunction {
  /// Edits the message content caption. Returns the edited message after the edit is completed on the server side
  const EditMessageCaption({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.caption,
    required this.showCaptionAboveMedia,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_be_edited to check whether the message can be edited
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption
  final FormattedText? caption;

  /// [showCaptionAboveMedia] Pass true to show the caption above the media; otherwise, the caption will be shown below the media. May be true only for animation, photo, and video messages
  final bool showCaptionAboveMedia;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "@extra": extra,
    };
  }

  EditMessageCaption copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
  }) {
    return EditMessageCaption(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      caption: caption ?? this.caption,
      showCaptionAboveMedia:
          showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    );
  }

  static const CONSTRUCTOR = 'editMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
