part of '../tdapi.dart';

class EditBusinessMessageCaption extends TdFunction {

  /// Edits the caption of a message sent on behalf of a business account; for bots only
  const EditBusinessMessageCaption({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.caption,
    required this.showCaptionAboveMedia,
  });
  
  /// [businessConnectionId] Unique identifier of business connection on behalf of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption; pass null to remove caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] Pass true to show the caption above the media; otherwise, the caption will be shown below the media. May be true only for animation, photo, and video messages
  final bool showCaptionAboveMedia;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "@extra": extra,
    };
  }
  
  EditBusinessMessageCaption copyWith({
    String? businessConnectionId,
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
  }) => EditBusinessMessageCaption(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
  );

  static const CONSTRUCTOR = 'editBusinessMessageCaption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
