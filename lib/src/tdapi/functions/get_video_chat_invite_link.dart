import '../tdapi.dart';

class GetVideoChatInviteLink extends TdFunction {

  /// Returns invite link to a video chat in a public chat
  const GetVideoChatInviteLink({
    required this.groupCallId,
    required this.canSelfUnmute,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [canSelfUnmute] Pass true if the invite link needs to contain an invite hash, passing which to joinVideoChat would allow the invited user to unmute themselves. Requires groupCall.can_be_managed right
  final bool canSelfUnmute;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "can_self_unmute": canSelfUnmute,
      "@extra": extra,
    };
  }
  
  GetVideoChatInviteLink copyWith({
    int? groupCallId,
    bool? canSelfUnmute,
  }) => GetVideoChatInviteLink(
    groupCallId: groupCallId ?? this.groupCallId,
    canSelfUnmute: canSelfUnmute ?? this.canSelfUnmute,
  );

  static const CONSTRUCTOR = 'getVideoChatInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
