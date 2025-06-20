import '../tdapi.dart';

class FoundMessages extends TdObject {
  /// Contains a list of messages found by a search
  const FoundMessages({
    required this.totalCount,
    required this.messages,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of messages found; -1 if unknown
  final int totalCount;

  /// [messages] List of messages
  final List<Message> messages;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory FoundMessages.fromJson(Map<String, dynamic> json) => FoundMessages(
        totalCount: json['total_count'] ?? 0,
        messages: json['messages'] == null
            ? <Message>[]
            : (json['messages'] as List)
                .map((e) => Message.fromJson(e ?? {}))
                .toList(),
        nextOffset: json['next_offset'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "messages": messages.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  FoundMessages copyWith({
    int? totalCount,
    List<Message>? messages,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return FoundMessages(
      totalCount: totalCount ?? this.totalCount,
      messages: messages ?? this.messages,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'foundMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
