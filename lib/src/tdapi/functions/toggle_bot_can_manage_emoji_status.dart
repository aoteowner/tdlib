part of '../tdapi.dart';

class ToggleBotCanManageEmojiStatus extends TdFunction {

  /// Toggles whether the bot can manage emoji status of the current user
  const ToggleBotCanManageEmojiStatus({
    required this.botUserId,
    required this.canManageEmojiStatus,
  });
  
  /// [botUserId] User identifier of the bot 
  final int botUserId;

  /// [canManageEmojiStatus] Pass true if the bot is allowed to change emoji status of the user; pass false otherwise
  final bool canManageEmojiStatus;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "can_manage_emoji_status": canManageEmojiStatus,
      "@extra": extra,
    };
  }
  
  ToggleBotCanManageEmojiStatus copyWith({
    int? botUserId,
    bool? canManageEmojiStatus,
  }) => ToggleBotCanManageEmojiStatus(
    botUserId: botUserId ?? this.botUserId,
    canManageEmojiStatus: canManageEmojiStatus ?? this.canManageEmojiStatus,
  );

  static const CONSTRUCTOR = 'toggleBotCanManageEmojiStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
