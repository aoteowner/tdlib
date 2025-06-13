import '../tdapi.dart';

class ChatInviteLinkInfo extends TdObject {

  /// Contains information about a chat invite link
  const ChatInviteLinkInfo({
    required this.chatId,
    required this.accessibleFor,
    required this.type,
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.description,
    required this.memberCount,
    required this.memberUserIds,
    this.subscriptionInfo,
    required this.createsJoinRequest,
    required this.isPublic,
    this.verificationStatus,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  final int chatId;

  /// [accessibleFor] If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  final int accessibleFor;

  /// [type] Type of the chat
  final InviteLinkChatType type;

  /// [title] Title of the chat
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for chat title and background of chat photo
  final int accentColorId;

  /// [description] Chat description
  final String description;

  /// [memberCount] Number of members in the chat
  final int memberCount;

  /// [memberUserIds] User identifiers of some chat members that may be known to the current user
  final List<int> memberUserIds;

  /// [subscriptionInfo] Information about subscription plan that must be paid by the user to use the link; may be null if the link doesn't require subscription
  final ChatInviteLinkSubscriptionInfo? subscriptionInfo;

  /// [createsJoinRequest] True, if the link only creates join request
  final bool createsJoinRequest;

  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  final bool isPublic;

  /// [verificationStatus] Information about verification status of the chat; may be null if none
  final VerificationStatus? verificationStatus;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) => ChatInviteLinkInfo(
    chatId: json['chat_id'] ?? 0,
    accessibleFor: json['accessible_for'] ?? 0,
    type: InviteLinkChatType.fromJson(json['type'] ?? {}),
    title: json['title'] ?? '',
    photo: ChatPhotoInfo.fromJson(json['photo'] ?? {}),
    accentColorId: json['accent_color_id'] ?? 0,
    description: json['description'] ?? '',
    memberCount: json['member_count'] ?? 0,
    memberUserIds: json['member_user_ids'] == null ? <int>[] :(json['member_user_ids'] as List).map((e) => (e  ?? 0) as int).toList(),
    subscriptionInfo: ChatInviteLinkSubscriptionInfo.fromJson(json['subscription_info'] ?? {}),
    createsJoinRequest: json['creates_join_request'] ?? false,
    isPublic: json['is_public'] ?? false,
    verificationStatus: VerificationStatus.fromJson(json['verification_status'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "accessible_for": accessibleFor,
      "type": type.toJson(),
      "title": title,
      "photo": photo?.toJson(),
      "accent_color_id": accentColorId,
      "description": description,
      "member_count": memberCount,
      "member_user_ids": memberUserIds,
      "subscription_info": subscriptionInfo?.toJson(),
      "creates_join_request": createsJoinRequest,
      "is_public": isPublic,
      "verification_status": verificationStatus?.toJson(),
    };
  }
  
  ChatInviteLinkInfo copyWith({
    int? chatId,
    int? accessibleFor,
    InviteLinkChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    int? accentColorId,
    String? description,
    int? memberCount,
    List<int>? memberUserIds,
    ChatInviteLinkSubscriptionInfo? subscriptionInfo,
    bool? createsJoinRequest,
    bool? isPublic,
    VerificationStatus? verificationStatus,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLinkInfo(
    chatId: chatId ?? this.chatId,
    accessibleFor: accessibleFor ?? this.accessibleFor,
    type: type ?? this.type,
    title: title ?? this.title,
    photo: photo ?? this.photo,
    accentColorId: accentColorId ?? this.accentColorId,
    description: description ?? this.description,
    memberCount: memberCount ?? this.memberCount,
    memberUserIds: memberUserIds ?? this.memberUserIds,
    subscriptionInfo: subscriptionInfo ?? this.subscriptionInfo,
    createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
    isPublic: isPublic ?? this.isPublic,
    verificationStatus: verificationStatus ?? this.verificationStatus,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatInviteLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
