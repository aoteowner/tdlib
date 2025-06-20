import '../tdapi.dart';

class ChatInviteLink extends TdObject {
  /// Contains a chat invite link
  const ChatInviteLink({
    required this.inviteLink,
    required this.name,
    required this.creatorUserId,
    required this.date,
    required this.editDate,
    required this.expirationDate,
    this.subscriptionPricing,
    required this.memberLimit,
    required this.memberCount,
    required this.expiredMemberCount,
    required this.pendingJoinRequestCount,
    required this.createsJoinRequest,
    required this.isPrimary,
    required this.isRevoked,
    this.extra,
    this.clientId,
  });

  /// [inviteLink] Chat invite link
  final String inviteLink;

  /// [name] Name of the link
  final String name;

  /// [creatorUserId] User identifier of an administrator created the link
  final int creatorUserId;

  /// [date] Point in time (Unix timestamp) when the link was created
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown
  final int editDate;

  /// [expirationDate] Point in time (Unix timestamp) when the link will expire; 0 if never
  final int expirationDate;

  /// [subscriptionPricing] Information about subscription plan that is applied to the users joining the chat by the link; may be null if the link doesn't require subscription
  final StarSubscriptionPricing? subscriptionPricing;

  /// [memberLimit] The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited. Always 0 if the link requires approval
  final int memberLimit;

  /// [memberCount] Number of chat members, which joined the chat using the link
  final int memberCount;

  /// [expiredMemberCount] Number of chat members, which joined the chat using the link, but have already left because of expired subscription; for subscription links only
  final int expiredMemberCount;

  /// [pendingJoinRequestCount] Number of pending join requests created using this link
  final int pendingJoinRequestCount;

  /// [createsJoinRequest] True, if the link only creates join request. If true, total number of joining members will be unlimited
  final bool createsJoinRequest;

  /// [isPrimary] True, if the link is primary. Primary invite link can't have name, expiration date, or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time
  final bool isPrimary;

  /// [isRevoked] True, if the link was revoked
  final bool isRevoked;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatInviteLink.fromJson(Map<String, dynamic> json) => ChatInviteLink(
        inviteLink: json['invite_link'] ?? '',
        name: json['name'] ?? '',
        creatorUserId: json['creator_user_id'] ?? 0,
        date: json['date'] ?? 0,
        editDate: json['edit_date'] ?? 0,
        expirationDate: json['expiration_date'] ?? 0,
        subscriptionPricing: StarSubscriptionPricing.fromJson(
            json['subscription_pricing'] ?? {}),
        memberLimit: json['member_limit'] ?? 0,
        memberCount: json['member_count'] ?? 0,
        expiredMemberCount: json['expired_member_count'] ?? 0,
        pendingJoinRequestCount: json['pending_join_request_count'] ?? 0,
        createsJoinRequest: json['creates_join_request'] ?? false,
        isPrimary: json['is_primary'] ?? false,
        isRevoked: json['is_revoked'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
      "name": name,
      "creator_user_id": creatorUserId,
      "date": date,
      "edit_date": editDate,
      "expiration_date": expirationDate,
      "subscription_pricing": subscriptionPricing?.toJson(),
      "member_limit": memberLimit,
      "member_count": memberCount,
      "expired_member_count": expiredMemberCount,
      "pending_join_request_count": pendingJoinRequestCount,
      "creates_join_request": createsJoinRequest,
      "is_primary": isPrimary,
      "is_revoked": isRevoked,
    };
  }

  ChatInviteLink copyWith({
    String? inviteLink,
    String? name,
    int? creatorUserId,
    int? date,
    int? editDate,
    int? expirationDate,
    StarSubscriptionPricing? subscriptionPricing,
    int? memberLimit,
    int? memberCount,
    int? expiredMemberCount,
    int? pendingJoinRequestCount,
    bool? createsJoinRequest,
    bool? isPrimary,
    bool? isRevoked,
    dynamic extra,
    int? clientId,
  }) {
    return ChatInviteLink(
      inviteLink: inviteLink ?? this.inviteLink,
      name: name ?? this.name,
      creatorUserId: creatorUserId ?? this.creatorUserId,
      date: date ?? this.date,
      editDate: editDate ?? this.editDate,
      expirationDate: expirationDate ?? this.expirationDate,
      subscriptionPricing: subscriptionPricing ?? this.subscriptionPricing,
      memberLimit: memberLimit ?? this.memberLimit,
      memberCount: memberCount ?? this.memberCount,
      expiredMemberCount: expiredMemberCount ?? this.expiredMemberCount,
      pendingJoinRequestCount:
          pendingJoinRequestCount ?? this.pendingJoinRequestCount,
      createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
      isPrimary: isPrimary ?? this.isPrimary,
      isRevoked: isRevoked ?? this.isRevoked,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
