part of '../tdapi.dart';

class BotVerificationParameters extends TdObject {

  /// Describes parameters of verification that is provided by a bot
  const BotVerificationParameters({
    required this.iconCustomEmojiId,
    required this.organizationName,
    this.defaultCustomDescription,
    required this.canSetCustomDescription,
  });
  
  /// [iconCustomEmojiId] Identifier of the custom emoji that is used as the verification sign
  final int iconCustomEmojiId;

  /// [organizationName] Name of the organization that provides verification
  final String organizationName;

  /// [defaultCustomDescription] Default custom description of verification reason to be used as placeholder in setMessageSenderBotVerification; may be null if none
  final FormattedText? defaultCustomDescription;

  /// [canSetCustomDescription] True, if the bot is allowed to provide custom description for verified entities
  final bool canSetCustomDescription;
  
  /// Parse from a json
  factory BotVerificationParameters.fromJson(Map<String, dynamic> json) => BotVerificationParameters(
    iconCustomEmojiId: int.parse(json['icon_custom_emoji_id']),
    organizationName: json['organization_name'],
    defaultCustomDescription: json['default_custom_description'] == null ? null : FormattedText.fromJson(json['default_custom_description']),
    canSetCustomDescription: json['can_set_custom_description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "icon_custom_emoji_id": iconCustomEmojiId,
      "organization_name": organizationName,
      "default_custom_description": defaultCustomDescription?.toJson(),
      "can_set_custom_description": canSetCustomDescription,
    };
  }
  
  BotVerificationParameters copyWith({
    int? iconCustomEmojiId,
    String? organizationName,
    FormattedText? defaultCustomDescription,
    bool? canSetCustomDescription,
  }) => BotVerificationParameters(
    iconCustomEmojiId: iconCustomEmojiId ?? this.iconCustomEmojiId,
    organizationName: organizationName ?? this.organizationName,
    defaultCustomDescription: defaultCustomDescription ?? this.defaultCustomDescription,
    canSetCustomDescription: canSetCustomDescription ?? this.canSetCustomDescription,
  );

  static const CONSTRUCTOR = 'botVerificationParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
