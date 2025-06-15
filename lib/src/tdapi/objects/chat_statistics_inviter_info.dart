import '../tdapi.dart';

class ChatStatisticsInviterInfo extends TdObject {
  /// Contains statistics about number of new members invited by a user
  const ChatStatisticsInviterInfo({
    required this.userId,
    required this.addedMemberCount,
  });

  /// [userId] User identifier
  final int userId;

  /// [addedMemberCount] Number of new members invited by the user
  final int addedMemberCount;

  factory ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json) =>
      ChatStatisticsInviterInfo(
        userId: json['user_id'] ?? 0,
        addedMemberCount: json['added_member_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "added_member_count": addedMemberCount,
    };
  }

  ChatStatisticsInviterInfo copyWith({
    int? userId,
    int? addedMemberCount,
  }) {
    return ChatStatisticsInviterInfo(
      userId: userId ?? this.userId,
      addedMemberCount: addedMemberCount ?? this.addedMemberCount,
    );
  }

  static const CONSTRUCTOR = 'chatStatisticsInviterInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
