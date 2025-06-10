part of '../tdapi.dart';

class VerificationStatus extends TdObject {

  /// Contains information about verification status of a chat or a user
  const VerificationStatus({
    required this.isVerified,
    required this.isScam,
    required this.isFake,
    required this.botVerificationIconCustomEmojiId,
  });
  
  /// [isVerified] True, if the chat or the user is verified by Telegram
  final bool isVerified;

  /// [isScam] True, if the chat or the user is marked as scam by Telegram
  final bool isScam;

  /// [isFake] True, if the chat or the user is marked as fake by Telegram
  final bool isFake;

  /// [botVerificationIconCustomEmojiId] Identifier of the custom emoji to be shown as verification sign provided by a bot for the user; 0 if none
  final int botVerificationIconCustomEmojiId;
  
  /// Parse from a json
  factory VerificationStatus.fromJson(Map<String, dynamic> json) => VerificationStatus(
    isVerified: json['is_verified'],
    isScam: json['is_scam'],
    isFake: json['is_fake'],
    botVerificationIconCustomEmojiId: int.tryParse(json['bot_verification_icon_custom_emoji_id'] ?? "") ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_verified": isVerified,
      "is_scam": isScam,
      "is_fake": isFake,
      "bot_verification_icon_custom_emoji_id": botVerificationIconCustomEmojiId,
    };
  }
  
  VerificationStatus copyWith({
    bool? isVerified,
    bool? isScam,
    bool? isFake,
    int? botVerificationIconCustomEmojiId,
  }) => VerificationStatus(
    isVerified: isVerified ?? this.isVerified,
    isScam: isScam ?? this.isScam,
    isFake: isFake ?? this.isFake,
    botVerificationIconCustomEmojiId: botVerificationIconCustomEmojiId ?? this.botVerificationIconCustomEmojiId,
  );

  static const CONSTRUCTOR = 'verificationStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
