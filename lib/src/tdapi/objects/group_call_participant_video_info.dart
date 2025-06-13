import '../tdapi.dart';

class GroupCallParticipantVideoInfo extends TdObject {

  /// Contains information about a group call participant's video channel
  const GroupCallParticipantVideoInfo({
    required this.sourceGroups,
    required this.endpointId,
    required this.isPaused,
  });
  
  /// [sourceGroups] List of synchronization source groups of the video
  final List<GroupCallVideoSourceGroup> sourceGroups;

  /// [endpointId] Video channel endpoint identifier
  final String endpointId;

  /// [isPaused] True, if the video is paused. This flag needs to be ignored, if new video frames are received
  final bool isPaused;
  
  /// Parse from a json
  factory GroupCallParticipantVideoInfo.fromJson(Map<String, dynamic> json) => GroupCallParticipantVideoInfo(
    sourceGroups: json['source_groups'] == null ? <GroupCallVideoSourceGroup>[] :(json['source_groups'] as List).map((e) => GroupCallVideoSourceGroup.fromJson(e ?? {})).toList(),
    endpointId: json['endpoint_id'] ?? '',
    isPaused: json['is_paused'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "source_groups": sourceGroups.map((e) => e.toJson()).toList(),
      "endpoint_id": endpointId,
      "is_paused": isPaused,
    };
  }
  
  GroupCallParticipantVideoInfo copyWith({
    List<GroupCallVideoSourceGroup>? sourceGroups,
    String? endpointId,
    bool? isPaused,
  }) => GroupCallParticipantVideoInfo(
    sourceGroups: sourceGroups ?? this.sourceGroups,
    endpointId: endpointId ?? this.endpointId,
    isPaused: isPaused ?? this.isPaused,
  );

  static const CONSTRUCTOR = 'groupCallParticipantVideoInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
