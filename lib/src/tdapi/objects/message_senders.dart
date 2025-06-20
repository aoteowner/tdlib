import '../tdapi.dart';

class MessageSenders extends TdObject {
  /// Represents a list of message senders
  const MessageSenders({
    required this.totalCount,
    required this.senders,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of messages senders found
  final int totalCount;

  /// [senders] List of message senders
  final List<MessageSender> senders;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory MessageSenders.fromJson(Map<String, dynamic> json) => MessageSenders(
        totalCount: json['total_count'] ?? 0,
        senders: json['senders'] == null
            ? <MessageSender>[]
            : (json['senders'] as List)
                .map((e) => MessageSender.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "senders": senders.map((e) => e.toJson()).toList(),
    };
  }

  MessageSenders copyWith({
    int? totalCount,
    List<MessageSender>? senders,
    dynamic extra,
    int? clientId,
  }) {
    return MessageSenders(
      totalCount: totalCount ?? this.totalCount,
      senders: senders ?? this.senders,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'messageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
