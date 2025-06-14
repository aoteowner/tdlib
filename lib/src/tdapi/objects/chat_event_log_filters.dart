import '../tdapi.dart';

class ChatEventLogFilters extends TdObject {
  /// Represents a set of filters used to obtain a chat event log
  const ChatEventLogFilters({
    required this.messageEdits,
    required this.messageDeletions,
    required this.messagePins,
    required this.memberJoins,
    required this.memberLeaves,
    required this.memberInvites,
    required this.memberPromotions,
    required this.memberRestrictions,
    required this.infoChanges,
    required this.settingChanges,
    required this.inviteLinkChanges,
    required this.videoChatChanges,
    required this.forumChanges,
    required this.subscriptionExtensions,
  });

  /// [messageEdits] True, if message edits need to be returned
  final bool messageEdits;

  /// [messageDeletions] True, if message deletions need to be returned
  final bool messageDeletions;

  /// [messagePins] True, if pin/unpin events need to be returned
  final bool messagePins;

  /// [memberJoins] True, if members joining events need to be returned
  final bool memberJoins;

  /// [memberLeaves] True, if members leaving events need to be returned
  final bool memberLeaves;

  /// [memberInvites] True, if invited member events need to be returned
  final bool memberInvites;

  /// [memberPromotions] True, if member promotion/demotion events need to be returned
  final bool memberPromotions;

  /// [memberRestrictions] True, if member restricted/unrestricted/banned/unbanned events need to be returned
  final bool memberRestrictions;

  /// [infoChanges] True, if changes in chat information need to be returned
  final bool infoChanges;

  /// [settingChanges] True, if changes in chat settings need to be returned
  final bool settingChanges;

  /// [inviteLinkChanges] True, if changes to invite links need to be returned
  final bool inviteLinkChanges;

  /// [videoChatChanges] True, if video chat actions need to be returned
  final bool videoChatChanges;

  /// [forumChanges] True, if forum-related actions need to be returned
  final bool forumChanges;

  /// [subscriptionExtensions] True, if subscription extensions need to be returned
  final bool subscriptionExtensions;

  factory ChatEventLogFilters.fromJson(Map<String, dynamic> json) =>
      ChatEventLogFilters(
        messageEdits: json['message_edits'] ?? false,
        messageDeletions: json['message_deletions'] ?? false,
        messagePins: json['message_pins'] ?? false,
        memberJoins: json['member_joins'] ?? false,
        memberLeaves: json['member_leaves'] ?? false,
        memberInvites: json['member_invites'] ?? false,
        memberPromotions: json['member_promotions'] ?? false,
        memberRestrictions: json['member_restrictions'] ?? false,
        infoChanges: json['info_changes'] ?? false,
        settingChanges: json['setting_changes'] ?? false,
        inviteLinkChanges: json['invite_link_changes'] ?? false,
        videoChatChanges: json['video_chat_changes'] ?? false,
        forumChanges: json['forum_changes'] ?? false,
        subscriptionExtensions: json['subscription_extensions'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_edits": messageEdits,
      "message_deletions": messageDeletions,
      "message_pins": messagePins,
      "member_joins": memberJoins,
      "member_leaves": memberLeaves,
      "member_invites": memberInvites,
      "member_promotions": memberPromotions,
      "member_restrictions": memberRestrictions,
      "info_changes": infoChanges,
      "setting_changes": settingChanges,
      "invite_link_changes": inviteLinkChanges,
      "video_chat_changes": videoChatChanges,
      "forum_changes": forumChanges,
      "subscription_extensions": subscriptionExtensions,
    };
  }

  ChatEventLogFilters copyWith({
    bool? messageEdits,
    bool? messageDeletions,
    bool? messagePins,
    bool? memberJoins,
    bool? memberLeaves,
    bool? memberInvites,
    bool? memberPromotions,
    bool? memberRestrictions,
    bool? infoChanges,
    bool? settingChanges,
    bool? inviteLinkChanges,
    bool? videoChatChanges,
    bool? forumChanges,
    bool? subscriptionExtensions,
  }) {
    return ChatEventLogFilters(
      messageEdits: messageEdits ?? this.messageEdits,
      messageDeletions: messageDeletions ?? this.messageDeletions,
      messagePins: messagePins ?? this.messagePins,
      memberJoins: memberJoins ?? this.memberJoins,
      memberLeaves: memberLeaves ?? this.memberLeaves,
      memberInvites: memberInvites ?? this.memberInvites,
      memberPromotions: memberPromotions ?? this.memberPromotions,
      memberRestrictions: memberRestrictions ?? this.memberRestrictions,
      infoChanges: infoChanges ?? this.infoChanges,
      settingChanges: settingChanges ?? this.settingChanges,
      inviteLinkChanges: inviteLinkChanges ?? this.inviteLinkChanges,
      videoChatChanges: videoChatChanges ?? this.videoChatChanges,
      forumChanges: forumChanges ?? this.forumChanges,
      subscriptionExtensions:
          subscriptionExtensions ?? this.subscriptionExtensions,
    );
  }

  static const CONSTRUCTOR = 'chatEventLogFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
