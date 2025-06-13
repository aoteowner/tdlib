import '../tdapi.dart';

class InviteVideoChatParticipants extends TdFunction {

  /// Invites users to an active video chat. Sends a service message of the type messageInviteVideoChatParticipants to the chat bound to the group call
  const InviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "user_ids": userIds,
      "@extra": extra,
    };
  }
  
  InviteVideoChatParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) => InviteVideoChatParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    userIds: userIds ?? this.userIds,
  );

  static const CONSTRUCTOR = 'inviteVideoChatParticipants';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
