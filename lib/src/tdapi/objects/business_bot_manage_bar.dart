import '../tdapi.dart';

class BusinessBotManageBar extends TdObject {

  /// Contains information about a business bot that manages the chat
  const BusinessBotManageBar({
    required this.botUserId,
    required this.manageUrl,
    required this.isBotPaused,
    required this.canBotReply,
  });
  
  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [manageUrl] URL to be opened to manage the bot
  final String manageUrl;

  /// [isBotPaused] True, if the bot is paused. Use toggleBusinessConnectedBotChatIsPaused to change the value of the field
  final bool isBotPaused;

  /// [canBotReply] True, if the bot can reply
  final bool canBotReply;
  
  /// Parse from a json
  factory BusinessBotManageBar.fromJson(Map<String, dynamic> json) => BusinessBotManageBar(
    botUserId: json['bot_user_id'],
    manageUrl: json['manage_url'],
    isBotPaused: json['is_bot_paused'],
    canBotReply: json['can_bot_reply'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "manage_url": manageUrl,
      "is_bot_paused": isBotPaused,
      "can_bot_reply": canBotReply,
    };
  }
  
  BusinessBotManageBar copyWith({
    int? botUserId,
    String? manageUrl,
    bool? isBotPaused,
    bool? canBotReply,
  }) => BusinessBotManageBar(
    botUserId: botUserId ?? this.botUserId,
    manageUrl: manageUrl ?? this.manageUrl,
    isBotPaused: isBotPaused ?? this.isBotPaused,
    canBotReply: canBotReply ?? this.canBotReply,
  );

  static const CONSTRUCTOR = 'businessBotManageBar';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
