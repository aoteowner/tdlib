import '../tdapi.dart';

class SponsoredMessage extends TdObject {

  /// Describes a sponsored message
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.canBeReported,
    required this.content,
    required this.sponsor,
    required this.title,
    required this.buttonText,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.additionalInfo,
  });
  
  /// [messageId] Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  final int messageId;

  /// [isRecommended] True, if the message needs to be labeled as "recommended" instead of "sponsored"
  final bool isRecommended;

  /// [canBeReported] True, if the message can be reported to Telegram moderators through reportChatSponsoredMessage
  final bool canBeReported;

  /// [content] Content of the message. Currently, can be only of the types messageText, messageAnimation, messagePhoto, or messageVideo. Video messages can be viewed fullscreen
  final MessageContent content;

  /// [sponsor] Information about the sponsor of the message
  final MessageSponsor sponsor;

  /// [title] Title of the sponsored message
  final String title;

  /// [buttonText] Text for the message action button
  final String buttonText;

  /// [accentColorId] Identifier of the accent color for title, button text and message background
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the message background; 0 if none
  final int backgroundCustomEmojiId;

  /// [additionalInfo] If non-empty, additional information about the sponsored message to be shown along with the message
  final String additionalInfo;
  
  /// Parse from a json
  factory SponsoredMessage.fromJson(Map<String, dynamic> json) => SponsoredMessage(
    messageId: json['message_id'] ?? 0,
    isRecommended: json['is_recommended'] ?? false,
    canBeReported: json['can_be_reported'] ?? false,
    content: MessageContent.fromJson(json['content'] ?? {}),
    sponsor: MessageSponsor.fromJson(json['sponsor'] ?? {}),
    title: json['title'] ?? '',
    buttonText: json['button_text'] ?? '',
    accentColorId: json['accent_color_id'] ?? 0,
    backgroundCustomEmojiId: int.tryParse(json['background_custom_emoji_id'] ?? '') ?? 0,
    additionalInfo: json['additional_info'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
      "is_recommended": isRecommended,
      "can_be_reported": canBeReported,
      "content": content.toJson(),
      "sponsor": sponsor.toJson(),
      "title": title,
      "button_text": buttonText,
      "accent_color_id": accentColorId,
      "background_custom_emoji_id": backgroundCustomEmojiId,
      "additional_info": additionalInfo,
    };
  }
  
  SponsoredMessage copyWith({
    int? messageId,
    bool? isRecommended,
    bool? canBeReported,
    MessageContent? content,
    MessageSponsor? sponsor,
    String? title,
    String? buttonText,
    int? accentColorId,
    int? backgroundCustomEmojiId,
    String? additionalInfo,
  }) => SponsoredMessage(
    messageId: messageId ?? this.messageId,
    isRecommended: isRecommended ?? this.isRecommended,
    canBeReported: canBeReported ?? this.canBeReported,
    content: content ?? this.content,
    sponsor: sponsor ?? this.sponsor,
    title: title ?? this.title,
    buttonText: buttonText ?? this.buttonText,
    accentColorId: accentColorId ?? this.accentColorId,
    backgroundCustomEmojiId: backgroundCustomEmojiId ?? this.backgroundCustomEmojiId,
    additionalInfo: additionalInfo ?? this.additionalInfo,
  );

  static const CONSTRUCTOR = 'sponsoredMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
