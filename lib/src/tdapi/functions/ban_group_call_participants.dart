import '../tdapi.dart';

class BanGroupCallParticipants extends TdFunction {
  /// Bans users from a group call not bound to a chat; requires groupCall.is_owned. Only the owner of the group call can invite the banned users back
  const BanGroupCallParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] Identifiers of group call participants to ban; identifiers of unknown users from the update updateGroupCallParticipants can be also passed to the method
  final List<int> userIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "user_ids": userIds.map((e) => '$e').toList(),
      "@extra": extra,
    };
  }

  BanGroupCallParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) {
    return BanGroupCallParticipants(
      groupCallId: groupCallId ?? this.groupCallId,
      userIds: userIds ?? this.userIds,
    );
  }

  static const CONSTRUCTOR = 'banGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}
