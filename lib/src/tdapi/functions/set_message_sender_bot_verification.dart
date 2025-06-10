part of '../tdapi.dart';

class SetMessageSenderBotVerification extends TdFunction {

  /// Changes the verification status of a user or a chat by an owned bot
  const SetMessageSenderBotVerification({
    required this.botUserId,
    required this.verifiedId,
    required this.customDescription,
  });
  
  /// [botUserId] Identifier of the owned bot, which will verify the user or the chat
  final int botUserId;

  /// [verifiedId] Identifier of the user or the supergroup or channel chat, which will be verified by the bot
  final MessageSender verifiedId;

  /// [customDescription] Custom description of verification reason; 0-getOption("bot_verification_custom_description_length_max").. If empty, then "was verified by organization "organization_name"" will be used as description. Can be specified only if the bot is allowed to provide custom description
  final String customDescription;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "verified_id": verifiedId.toJson(),
      "custom_description": customDescription,
      "@extra": extra,
    };
  }
  
  SetMessageSenderBotVerification copyWith({
    int? botUserId,
    MessageSender? verifiedId,
    String? customDescription,
  }) => SetMessageSenderBotVerification(
    botUserId: botUserId ?? this.botUserId,
    verifiedId: verifiedId ?? this.verifiedId,
    customDescription: customDescription ?? this.customDescription,
  );

  static const CONSTRUCTOR = 'setMessageSenderBotVerification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
