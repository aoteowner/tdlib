import '../tdapi.dart';

class ChatEvents extends TdObject {
  /// Contains a list of chat events
  const ChatEvents({
    required this.events,
    this.extra,
    this.clientId,
  });

  /// [events] List of events
  final List<ChatEvent> events;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatEvents.fromJson(Map<String, dynamic> json) => ChatEvents(
        events: json['events'] == null
            ? <ChatEvent>[]
            : (json['events'] as List)
                .map((e) => ChatEvent.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "events": events.map((e) => e.toJson()).toList(),
    };
  }

  ChatEvents copyWith({
    List<ChatEvent>? events,
    dynamic extra,
    int? clientId,
  }) {
    return ChatEvents(
      events: events ?? this.events,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatEvents';

  @override
  String getConstructor() => CONSTRUCTOR;
}
