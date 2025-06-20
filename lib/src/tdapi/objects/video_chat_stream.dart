import '../tdapi.dart';

class VideoChatStream extends TdObject {
  /// Describes an available stream in a video chat
  const VideoChatStream({
    required this.channelId,
    required this.scale,
    required this.timeOffset,
  });

  /// [channelId] Identifier of an audio/video channel
  final int channelId;

  /// [scale] Scale of segment durations in the stream. The duration is 1000/(2**scale) milliseconds
  final int scale;

  /// [timeOffset] Point in time when the stream currently ends; Unix timestamp in milliseconds
  final int timeOffset;

  factory VideoChatStream.fromJson(Map<String, dynamic> json) =>
      VideoChatStream(
        channelId: json['channel_id'] ?? 0,
        scale: json['scale'] ?? 0,
        timeOffset: json['time_offset'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "channel_id": channelId,
      "scale": scale,
      "time_offset": timeOffset,
    };
  }

  VideoChatStream copyWith({
    int? channelId,
    int? scale,
    int? timeOffset,
  }) {
    return VideoChatStream(
      channelId: channelId ?? this.channelId,
      scale: scale ?? this.scale,
      timeOffset: timeOffset ?? this.timeOffset,
    );
  }

  static const CONSTRUCTOR = 'videoChatStream';

  @override
  String getConstructor() => CONSTRUCTOR;
}
