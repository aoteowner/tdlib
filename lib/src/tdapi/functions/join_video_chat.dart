import '../tdapi.dart';

class JoinVideoChat extends TdFunction {

  /// Joins an active video chat. Returns join response payload for tgcalls
  const JoinVideoChat({
    required this.groupCallId,
    this.participantId,
    required this.joinParameters,
    required this.inviteHash,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only
  final MessageSender? participantId;

  /// [joinParameters] Parameters to join the call
  final GroupCallJoinParameters joinParameters;

  /// [inviteHash] Invite hash as received from internalLinkTypeVideoChat
  final String inviteHash;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant_id": participantId?.toJson(),
      "join_parameters": joinParameters.toJson(),
      "invite_hash": inviteHash,
      "@extra": extra,
    };
  }
  
  JoinVideoChat copyWith({
    int? groupCallId,
    MessageSender? participantId,
    GroupCallJoinParameters? joinParameters,
    String? inviteHash,
  }) => JoinVideoChat(
    groupCallId: groupCallId ?? this.groupCallId,
    participantId: participantId ?? this.participantId,
    joinParameters: joinParameters ?? this.joinParameters,
    inviteHash: inviteHash ?? this.inviteHash,
  );

  static const CONSTRUCTOR = 'joinVideoChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
