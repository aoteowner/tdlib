import '../tdapi.dart';

class BasicGroupFullInfo extends TdObject {

  /// Contains full information about a basic group
  const BasicGroupFullInfo({
    this.photo,
    required this.description,
    required this.creatorUserId,
    required this.members,
    required this.canHideMembers,
    required this.canToggleAggressiveAntiSpam,
    this.inviteLink,
    required this.botCommands,
    this.extra,
    this.clientId,
  });
  
  /// [photo] Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo
  final ChatPhoto? photo;

  /// [description] Group description. Updated only after the basic group is opened
  final String description;

  /// [creatorUserId] User identifier of the creator of the group; 0 if unknown
  final int creatorUserId;

  /// [members] Group members
  final List<ChatMember> members;

  /// [canHideMembers] True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators after upgrading the basic group to a supergroup
  final bool canHideMembers;

  /// [canToggleAggressiveAntiSpam] True, if aggressive anti-spam checks can be enabled or disabled in the supergroup after upgrading the basic group to a supergroup
  final bool canToggleAggressiveAntiSpam;

  /// [inviteLink] Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened
  final ChatInviteLink? inviteLink;

  /// [botCommands] List of commands of bots in the group
  final List<BotCommands> botCommands;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BasicGroupFullInfo.fromJson(Map<String, dynamic> json) => BasicGroupFullInfo(
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
    description: json['description'] ?? '',
    creatorUserId: json['creator_user_id'] ?? 0,
    members: json['members'] == null ? <ChatMember>[] :(json['members'] as List).map((e) => ChatMember.fromJson(e ?? {})).toList(),
    canHideMembers: json['can_hide_members'] ?? false,
    canToggleAggressiveAntiSpam: json['can_toggle_aggressive_anti_spam'] ?? false,
    inviteLink: ChatInviteLink.fromJson(json['invite_link'] ?? {}),
    botCommands: json['bot_commands'] == null ? <BotCommands>[] :(json['bot_commands'] as List).map((e) => BotCommands.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "description": description,
      "creator_user_id": creatorUserId,
      "members": members.map((e) => e.toJson()).toList(),
      "can_hide_members": canHideMembers,
      "can_toggle_aggressive_anti_spam": canToggleAggressiveAntiSpam,
      "invite_link": inviteLink?.toJson(),
      "bot_commands": botCommands.map((e) => e.toJson()).toList(),
    };
  }
  
  BasicGroupFullInfo copyWith({
    ChatPhoto? photo,
    String? description,
    int? creatorUserId,
    List<ChatMember>? members,
    bool? canHideMembers,
    bool? canToggleAggressiveAntiSpam,
    ChatInviteLink? inviteLink,
    List<BotCommands>? botCommands,
    dynamic extra,
    int? clientId,
  }) => BasicGroupFullInfo(
    photo: photo ?? this.photo,
    description: description ?? this.description,
    creatorUserId: creatorUserId ?? this.creatorUserId,
    members: members ?? this.members,
    canHideMembers: canHideMembers ?? this.canHideMembers,
    canToggleAggressiveAntiSpam: canToggleAggressiveAntiSpam ?? this.canToggleAggressiveAntiSpam,
    inviteLink: inviteLink ?? this.inviteLink,
    botCommands: botCommands ?? this.botCommands,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'basicGroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
