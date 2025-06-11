import '../tdapi.dart';

class GroupCallJoinParameters extends TdObject {

  /// Describes parameters used to join a group call
  const GroupCallJoinParameters({
    required this.audioSourceId,
    required this.payload,
    required this.isMuted,
    required this.isMyVideoEnabled,
  });
  
  /// [audioSourceId] Audio channel synchronization source identifier; received from tgcalls
  final int audioSourceId;

  /// [payload] Group call join payload; received from tgcalls
  final String payload;

  /// [isMuted] Pass true to join the call with muted microphone
  final bool isMuted;

  /// [isMyVideoEnabled] Pass true if the user's video is enabled
  final bool isMyVideoEnabled;
  
  /// Parse from a json
  factory GroupCallJoinParameters.fromJson(Map<String, dynamic> json) => GroupCallJoinParameters(
    audioSourceId: json['audio_source_id'],
    payload: json['payload'],
    isMuted: json['is_muted'],
    isMyVideoEnabled: json['is_my_video_enabled'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio_source_id": audioSourceId,
      "payload": payload,
      "is_muted": isMuted,
      "is_my_video_enabled": isMyVideoEnabled,
    };
  }
  
  GroupCallJoinParameters copyWith({
    int? audioSourceId,
    String? payload,
    bool? isMuted,
    bool? isMyVideoEnabled,
  }) => GroupCallJoinParameters(
    audioSourceId: audioSourceId ?? this.audioSourceId,
    payload: payload ?? this.payload,
    isMuted: isMuted ?? this.isMuted,
    isMyVideoEnabled: isMyVideoEnabled ?? this.isMyVideoEnabled,
  );

  static const CONSTRUCTOR = 'groupCallJoinParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
