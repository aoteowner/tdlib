import '../tdapi.dart';

class ChatInviteLinkCount extends TdObject {
  /// Describes a chat administrator with a number of active and revoked chat invite links
  const ChatInviteLinkCount({
    required this.userId,
    required this.inviteLinkCount,
    required this.revokedInviteLinkCount,
  });

  /// [userId] Administrator's user identifier
  final int userId;

  /// [inviteLinkCount] Number of active invite links
  final int inviteLinkCount;

  /// [revokedInviteLinkCount] Number of revoked invite links
  final int revokedInviteLinkCount;

  factory ChatInviteLinkCount.fromJson(Map<String, dynamic> json) =>
      ChatInviteLinkCount(
        userId: json['user_id'] ?? 0,
        inviteLinkCount: json['invite_link_count'] ?? 0,
        revokedInviteLinkCount: json['revoked_invite_link_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "invite_link_count": inviteLinkCount,
      "revoked_invite_link_count": revokedInviteLinkCount,
    };
  }

  ChatInviteLinkCount copyWith({
    int? userId,
    int? inviteLinkCount,
    int? revokedInviteLinkCount,
  }) {
    return ChatInviteLinkCount(
      userId: userId ?? this.userId,
      inviteLinkCount: inviteLinkCount ?? this.inviteLinkCount,
      revokedInviteLinkCount:
          revokedInviteLinkCount ?? this.revokedInviteLinkCount,
    );
  }

  static const CONSTRUCTOR = 'chatInviteLinkCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
