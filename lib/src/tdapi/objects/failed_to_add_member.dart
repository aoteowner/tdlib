import '../tdapi.dart';

class FailedToAddMember extends TdObject {
  /// Contains information about a user that has failed to be added to a chat
  const FailedToAddMember({
    required this.userId,
    required this.premiumWouldAllowInvite,
    required this.premiumRequiredToSendMessages,
  });

  /// [userId] User identifier
  final int userId;

  /// [premiumWouldAllowInvite] True, if subscription to Telegram Premium would have allowed to add the user to the chat
  final bool premiumWouldAllowInvite;

  /// [premiumRequiredToSendMessages] True, if subscription to Telegram Premium is required to send the user chat invite link
  final bool premiumRequiredToSendMessages;

  factory FailedToAddMember.fromJson(Map<String, dynamic> json) =>
      FailedToAddMember(
        userId: json['user_id'] ?? 0,
        premiumWouldAllowInvite: json['premium_would_allow_invite'] ?? false,
        premiumRequiredToSendMessages:
            json['premium_required_to_send_messages'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "premium_would_allow_invite": premiumWouldAllowInvite,
      "premium_required_to_send_messages": premiumRequiredToSendMessages,
    };
  }

  FailedToAddMember copyWith({
    int? userId,
    bool? premiumWouldAllowInvite,
    bool? premiumRequiredToSendMessages,
  }) {
    return FailedToAddMember(
      userId: userId ?? this.userId,
      premiumWouldAllowInvite:
          premiumWouldAllowInvite ?? this.premiumWouldAllowInvite,
      premiumRequiredToSendMessages:
          premiumRequiredToSendMessages ?? this.premiumRequiredToSendMessages,
    );
  }

  static const CONSTRUCTOR = 'failedToAddMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
