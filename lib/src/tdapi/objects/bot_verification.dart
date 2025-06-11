import '../tdapi.dart';

class BotVerification extends TdObject {

  /// Describes verification status provided by a bot
  const BotVerification({
    required this.botUserId,
    required this.iconCustomEmojiId,
    required this.customDescription,
  });
  
  /// [botUserId] Identifier of the bot that provided the verification
  final int botUserId;

  /// [iconCustomEmojiId] Identifier of the custom emoji that is used as the verification sign
  final int iconCustomEmojiId;

  /// [customDescription] Custom description of verification reason set by the bot. Can contain only Mention, Hashtag, Cashtag, PhoneNumber, BankCardNumber, Url, and EmailAddress entities
  final FormattedText customDescription;
  
  /// Parse from a json
  factory BotVerification.fromJson(Map<String, dynamic> json) => BotVerification(
    botUserId: json['bot_user_id'],
    iconCustomEmojiId: int.parse(json['icon_custom_emoji_id']),
    customDescription: FormattedText.fromJson(json['custom_description']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "icon_custom_emoji_id": iconCustomEmojiId,
      "custom_description": customDescription.toJson(),
    };
  }
  
  BotVerification copyWith({
    int? botUserId,
    int? iconCustomEmojiId,
    FormattedText? customDescription,
  }) => BotVerification(
    botUserId: botUserId ?? this.botUserId,
    iconCustomEmojiId: iconCustomEmojiId ?? this.iconCustomEmojiId,
    customDescription: customDescription ?? this.customDescription,
  );

  static const CONSTRUCTOR = 'botVerification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
