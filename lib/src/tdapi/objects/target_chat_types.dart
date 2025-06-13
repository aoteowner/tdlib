import '../tdapi.dart';

class TargetChatTypes extends TdObject {

  /// Describes allowed types for the target chat
  const TargetChatTypes({
    required this.allowUserChats,
    required this.allowBotChats,
    required this.allowGroupChats,
    required this.allowChannelChats,
  });
  
  /// [allowUserChats] True, if private chats with ordinary users are allowed
  final bool allowUserChats;

  /// [allowBotChats] True, if private chats with other bots are allowed
  final bool allowBotChats;

  /// [allowGroupChats] True, if basic group and supergroup chats are allowed
  final bool allowGroupChats;

  /// [allowChannelChats] True, if channel chats are allowed
  final bool allowChannelChats;
  
  /// Parse from a json
  factory TargetChatTypes.fromJson(Map<String, dynamic> json) => TargetChatTypes(
    allowUserChats: json['allow_user_chats'] ?? false,
    allowBotChats: json['allow_bot_chats'] ?? false,
    allowGroupChats: json['allow_group_chats'] ?? false,
    allowChannelChats: json['allow_channel_chats'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "allow_user_chats": allowUserChats,
      "allow_bot_chats": allowBotChats,
      "allow_group_chats": allowGroupChats,
      "allow_channel_chats": allowChannelChats,
    };
  }
  
  TargetChatTypes copyWith({
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) => TargetChatTypes(
    allowUserChats: allowUserChats ?? this.allowUserChats,
    allowBotChats: allowBotChats ?? this.allowBotChats,
    allowGroupChats: allowGroupChats ?? this.allowGroupChats,
    allowChannelChats: allowChannelChats ?? this.allowChannelChats,
  );

  static const CONSTRUCTOR = 'targetChatTypes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
