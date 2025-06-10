part of '../tdapi.dart';

class EditInlineMessageCaption extends TdFunction {

  /// Edits the caption of an inline message sent via a bot; for bots only
  const EditInlineMessageCaption({
    required this.inlineMessageId,
    this.replyMarkup,
    this.caption,
    required this.showCaptionAboveMedia,
  });
  
  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

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
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "@extra": extra,
    };
  }
  
  EditInlineMessageCaption copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
  }) => EditInlineMessageCaption(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
  );

  static const CONSTRUCTOR = 'editInlineMessageCaption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
