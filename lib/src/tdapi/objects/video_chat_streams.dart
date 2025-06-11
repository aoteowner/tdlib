import '../tdapi.dart';

class VideoChatStreams extends TdObject {

  /// Represents a list of video chat streams
  const VideoChatStreams({
    required this.streams,
    this.extra,
    this.clientId,
  });
  
  /// [streams] A list of video chat streams
  final List<VideoChatStream> streams;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory VideoChatStreams.fromJson(Map<String, dynamic> json) => VideoChatStreams(
    streams: List<VideoChatStream>.from((json['streams'] ?? []).map((item) => VideoChatStream.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "streams": streams.map((i) => i.toJson()).toList(),
    };
  }
  
  VideoChatStreams copyWith({
    List<VideoChatStream>? streams,
    dynamic extra,
    int? clientId,
  }) => VideoChatStreams(
    streams: streams ?? this.streams,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'videoChatStreams';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
