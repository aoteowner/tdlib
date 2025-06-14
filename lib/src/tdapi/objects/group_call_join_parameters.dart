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

  factory GroupCallJoinParameters.fromJson(Map<String, dynamic> json) =>
      GroupCallJoinParameters(
        audioSourceId: json['audio_source_id'] ?? 0,
        payload: json['payload'] ?? '',
        isMuted: json['is_muted'] ?? false,
        isMyVideoEnabled: json['is_my_video_enabled'] ?? false,
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
  }) {
    return GroupCallJoinParameters(
      audioSourceId: audioSourceId ?? this.audioSourceId,
      payload: payload ?? this.payload,
      isMuted: isMuted ?? this.isMuted,
      isMyVideoEnabled: isMyVideoEnabled ?? this.isMyVideoEnabled,
    );
  }

  static const CONSTRUCTOR = 'groupCallJoinParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
