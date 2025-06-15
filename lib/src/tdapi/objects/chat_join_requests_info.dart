import '../tdapi.dart';

class ChatJoinRequestsInfo extends TdObject {
  /// Contains information about pending join requests for a chat
  const ChatJoinRequestsInfo({
    required this.totalCount,
    required this.userIds,
  });

  /// [totalCount] Total number of pending join requests
  final int totalCount;

  /// [userIds] Identifiers of at most 3 users sent the newest pending join requests
  final List<int> userIds;

  factory ChatJoinRequestsInfo.fromJson(Map<String, dynamic> json) =>
      ChatJoinRequestsInfo(
        totalCount: json['total_count'] ?? 0,
        userIds: json['user_ids'] == null
            ? <int>[]
            : (json['user_ids'] as List).map((e) => (e ?? 0) as int).toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "user_ids": userIds,
    };
  }

  ChatJoinRequestsInfo copyWith({
    int? totalCount,
    List<int>? userIds,
  }) {
    return ChatJoinRequestsInfo(
      totalCount: totalCount ?? this.totalCount,
      userIds: userIds ?? this.userIds,
    );
  }

  static const CONSTRUCTOR = 'chatJoinRequestsInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
