import '../tdapi.dart';

class InviteGroupCallParticipant extends TdFunction {

  /// Invites a user to an active group call; for group calls not bound to a chat only. Sends a service message of the type messageGroupCall.. The group call can have at most getOption("group_call_participant_count_max") participants
  const InviteGroupCallParticipant({
    required this.groupCallId,
    required this.userId,
    required this.isVideo,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userId] User identifier
  final int userId;

  /// [isVideo] Pass true if the group call is a video call
  final bool isVideo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "user_id": userId,
      "is_video": isVideo,
      "@extra": extra,
    };
  }
  
  InviteGroupCallParticipant copyWith({
    int? groupCallId,
    int? userId,
    bool? isVideo,
  }) => InviteGroupCallParticipant(
    groupCallId: groupCallId ?? this.groupCallId,
    userId: userId ?? this.userId,
    isVideo: isVideo ?? this.isVideo,
  );

  static const CONSTRUCTOR = 'inviteGroupCallParticipant';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
