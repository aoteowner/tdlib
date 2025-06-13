import '../tdapi.dart';

class MessageCopyOptions extends TdObject {

  /// Options to be used when a message content is copied without reference to the original sender. Service messages, messages with messageInvoice, messagePaidMedia, messageGiveaway, or messageGiveawayWinners content can't be copied
  const MessageCopyOptions({
    required this.sendCopy,
    required this.replaceCaption,
    this.newCaption,
    required this.newShowCaptionAboveMedia,
  });
  
  /// [sendCopy] True, if content of the message needs to be copied without reference to the original sender. Always true if the message is forwarded to a secret chat or is local.. Use messageProperties.can_be_saved and messageProperties.can_be_copied_to_secret_chat to check whether the message is suitable
  final bool sendCopy;

  /// [replaceCaption] True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false
  final bool replaceCaption;

  /// [newCaption] New message caption; pass null to copy message without caption. Ignored if replace_caption is false
  final FormattedText? newCaption;

  /// [newShowCaptionAboveMedia] True, if new caption must be shown above the media; otherwise, new caption must be shown below the media; not supported in secret chats. Ignored if replace_caption is false
  final bool newShowCaptionAboveMedia;
  
  /// Parse from a json
  factory MessageCopyOptions.fromJson(Map<String, dynamic> json) => MessageCopyOptions(
    sendCopy: json['send_copy'] ?? false,
    replaceCaption: json['replace_caption'] ?? false,
    newCaption: FormattedText.fromJson(json['new_caption'] ?? {}),
    newShowCaptionAboveMedia: json['new_show_caption_above_media'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "send_copy": sendCopy,
      "replace_caption": replaceCaption,
      "new_caption": newCaption?.toJson(),
      "new_show_caption_above_media": newShowCaptionAboveMedia,
    };
  }
  
  MessageCopyOptions copyWith({
    bool? sendCopy,
    bool? replaceCaption,
    FormattedText? newCaption,
    bool? newShowCaptionAboveMedia,
  }) => MessageCopyOptions(
    sendCopy: sendCopy ?? this.sendCopy,
    replaceCaption: replaceCaption ?? this.replaceCaption,
    newCaption: newCaption ?? this.newCaption,
    newShowCaptionAboveMedia: newShowCaptionAboveMedia ?? this.newShowCaptionAboveMedia,
  );

  static const CONSTRUCTOR = 'messageCopyOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
