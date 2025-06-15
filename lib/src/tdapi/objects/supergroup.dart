import '../tdapi.dart';

class Supergroup extends TdObject {
  /// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup:. only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos.. Unlike supergroups, channels can have an unlimited number of subscribers
  const Supergroup({
    required this.id,
    this.usernames,
    required this.date,
    required this.status,
    required this.memberCount,
    required this.boostLevel,
    required this.hasAutomaticTranslation,
    required this.hasLinkedChat,
    required this.hasLocation,
    required this.signMessages,
    required this.showMessageSender,
    required this.joinToSendMessages,
    required this.joinByRequest,
    required this.isSlowModeEnabled,
    required this.isChannel,
    required this.isBroadcastGroup,
    required this.isForum,
    this.verificationStatus,
    required this.hasSensitiveContent,
    required this.restrictionReason,
    required this.paidMessageStarCount,
    required this.hasActiveStories,
    required this.hasUnreadActiveStories,
    this.extra,
    this.clientId,
  });

  /// [id] Supergroup or channel identifier
  final int id;

  /// [usernames] Usernames of the supergroup or channel; may be null
  final Usernames? usernames;

  /// [date] Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  final int date;

  /// [status] Status of the current user in the supergroup or channel; custom title will always be empty
  final ChatMemberStatus status;

  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through. getChatSimilarChats, getChatsToPostStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats, getRecommendedChats, getSuitableDiscussionChats,. getUserPrivacySettingRules, getVideoChatAvailableParticipants, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or in userFullInfo.personal_chat_id,. or for chats with messages or stories from publicForwards and foundStories
  final int memberCount;

  /// [boostLevel] Approximate boost level for the chat
  final int boostLevel;

  /// [hasAutomaticTranslation] True, if automatic translation of messages is enabled in the channel
  final bool hasAutomaticTranslation;

  /// [hasLinkedChat] True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  final bool hasLinkedChat;

  /// [hasLocation] True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  final bool hasLocation;

  /// [signMessages] True, if messages sent to the channel contains name of the sender. This field is only applicable to channels
  final bool signMessages;

  /// [showMessageSender] True, if messages sent to the channel have information about the sender user. This field is only applicable to channels
  final bool showMessageSender;

  /// [joinToSendMessages] True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups
  final bool joinToSendMessages;

  /// [joinByRequest] True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat
  final bool joinByRequest;

  /// [isSlowModeEnabled] True, if the slow mode is enabled in the supergroup
  final bool isSlowModeEnabled;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  /// [isBroadcastGroup] True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members
  final bool isBroadcastGroup;

  /// [isForum] True, if the supergroup is a forum with topics
  final bool isForum;

  /// [verificationStatus] Information about verification status of the supergroup or channel; may be null if none
  final VerificationStatus? verificationStatus;

  /// [hasSensitiveContent] True, if content of media messages in the supergroup or channel chat must be hidden with 18+ spoiler
  final bool hasSensitiveContent;

  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  final String restrictionReason;

  /// [paidMessageStarCount] Number of Telegram Stars that must be paid by non-administrator users of the supergroup chat for each sent message
  final int paidMessageStarCount;

  /// [hasActiveStories] True, if the supergroup or channel has non-expired stories available to the current user
  final bool hasActiveStories;

  /// [hasUnreadActiveStories] True, if the supergroup or channel has unread non-expired stories available to the current user
  final bool hasUnreadActiveStories;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Supergroup.fromJson(Map<String, dynamic> json) => Supergroup(
        id: json['id'] ?? 0,
        usernames: Usernames.fromJson(json['usernames'] ?? {}),
        date: json['date'] ?? 0,
        status: ChatMemberStatus.fromJson(json['status'] ?? {}),
        memberCount: json['member_count'] ?? 0,
        boostLevel: json['boost_level'] ?? 0,
        hasAutomaticTranslation: json['has_automatic_translation'] ?? false,
        hasLinkedChat: json['has_linked_chat'] ?? false,
        hasLocation: json['has_location'] ?? false,
        signMessages: json['sign_messages'] ?? false,
        showMessageSender: json['show_message_sender'] ?? false,
        joinToSendMessages: json['join_to_send_messages'] ?? false,
        joinByRequest: json['join_by_request'] ?? false,
        isSlowModeEnabled: json['is_slow_mode_enabled'] ?? false,
        isChannel: json['is_channel'] ?? false,
        isBroadcastGroup: json['is_broadcast_group'] ?? false,
        isForum: json['is_forum'] ?? false,
        verificationStatus:
            VerificationStatus.fromJson(json['verification_status'] ?? {}),
        hasSensitiveContent: json['has_sensitive_content'] ?? false,
        restrictionReason: json['restriction_reason'] ?? '',
        paidMessageStarCount: json['paid_message_star_count'] ?? 0,
        hasActiveStories: json['has_active_stories'] ?? false,
        hasUnreadActiveStories: json['has_unread_active_stories'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "usernames": usernames?.toJson(),
      "date": date,
      "status": status.toJson(),
      "member_count": memberCount,
      "boost_level": boostLevel,
      "has_automatic_translation": hasAutomaticTranslation,
      "has_linked_chat": hasLinkedChat,
      "has_location": hasLocation,
      "sign_messages": signMessages,
      "show_message_sender": showMessageSender,
      "join_to_send_messages": joinToSendMessages,
      "join_by_request": joinByRequest,
      "is_slow_mode_enabled": isSlowModeEnabled,
      "is_channel": isChannel,
      "is_broadcast_group": isBroadcastGroup,
      "is_forum": isForum,
      "verification_status": verificationStatus?.toJson(),
      "has_sensitive_content": hasSensitiveContent,
      "restriction_reason": restrictionReason,
      "paid_message_star_count": paidMessageStarCount,
      "has_active_stories": hasActiveStories,
      "has_unread_active_stories": hasUnreadActiveStories,
    };
  }

  Supergroup copyWith({
    int? id,
    Usernames? usernames,
    int? date,
    ChatMemberStatus? status,
    int? memberCount,
    int? boostLevel,
    bool? hasAutomaticTranslation,
    bool? hasLinkedChat,
    bool? hasLocation,
    bool? signMessages,
    bool? showMessageSender,
    bool? joinToSendMessages,
    bool? joinByRequest,
    bool? isSlowModeEnabled,
    bool? isChannel,
    bool? isBroadcastGroup,
    bool? isForum,
    VerificationStatus? verificationStatus,
    bool? hasSensitiveContent,
    String? restrictionReason,
    int? paidMessageStarCount,
    bool? hasActiveStories,
    bool? hasUnreadActiveStories,
    dynamic extra,
    int? clientId,
  }) {
    return Supergroup(
      id: id ?? this.id,
      usernames: usernames ?? this.usernames,
      date: date ?? this.date,
      status: status ?? this.status,
      memberCount: memberCount ?? this.memberCount,
      boostLevel: boostLevel ?? this.boostLevel,
      hasAutomaticTranslation:
          hasAutomaticTranslation ?? this.hasAutomaticTranslation,
      hasLinkedChat: hasLinkedChat ?? this.hasLinkedChat,
      hasLocation: hasLocation ?? this.hasLocation,
      signMessages: signMessages ?? this.signMessages,
      showMessageSender: showMessageSender ?? this.showMessageSender,
      joinToSendMessages: joinToSendMessages ?? this.joinToSendMessages,
      joinByRequest: joinByRequest ?? this.joinByRequest,
      isSlowModeEnabled: isSlowModeEnabled ?? this.isSlowModeEnabled,
      isChannel: isChannel ?? this.isChannel,
      isBroadcastGroup: isBroadcastGroup ?? this.isBroadcastGroup,
      isForum: isForum ?? this.isForum,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      hasSensitiveContent: hasSensitiveContent ?? this.hasSensitiveContent,
      restrictionReason: restrictionReason ?? this.restrictionReason,
      paidMessageStarCount: paidMessageStarCount ?? this.paidMessageStarCount,
      hasActiveStories: hasActiveStories ?? this.hasActiveStories,
      hasUnreadActiveStories:
          hasUnreadActiveStories ?? this.hasUnreadActiveStories,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'supergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
