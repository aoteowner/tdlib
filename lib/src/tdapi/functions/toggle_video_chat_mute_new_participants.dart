import '../tdapi.dart';

class ToggleVideoChatMuteNewParticipants extends TdFunction {
  /// Toggles whether new participants of a video chat can be unmuted only by administrators of the video chat. Requires groupCall.can_toggle_mute_new_participants right
  const ToggleVideoChatMuteNewParticipants({
    required this.groupCallId,
    required this.muteNewParticipants,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "mute_new_participants": muteNewParticipants,
      "@extra": extra,
    };
  }

  ToggleVideoChatMuteNewParticipants copyWith({
    int? groupCallId,
    bool? muteNewParticipants,
  }) {
    return ToggleVideoChatMuteNewParticipants(
      groupCallId: groupCallId ?? this.groupCallId,
      muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
    );
  }

  static const CONSTRUCTOR = 'toggleVideoChatMuteNewParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}
