import '../tdapi.dart';

class MessageCalendar extends TdObject {
  /// Contains information about found messages, split by days according to the option "utc_time_offset"
  const MessageCalendar({
    required this.totalCount,
    required this.days,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Total number of found messages
  final int totalCount;

  /// [days] Information about messages sent
  final List<MessageCalendarDay> days;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory MessageCalendar.fromJson(Map<String, dynamic> json) =>
      MessageCalendar(
        totalCount: json['total_count'] ?? 0,
        days: json['days'] == null
            ? <MessageCalendarDay>[]
            : (json['days'] as List)
                .map((e) => MessageCalendarDay.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "days": days.map((e) => e.toJson()).toList(),
    };
  }

  MessageCalendar copyWith({
    int? totalCount,
    List<MessageCalendarDay>? days,
    dynamic extra,
    int? clientId,
  }) {
    return MessageCalendar(
      totalCount: totalCount ?? this.totalCount,
      days: days ?? this.days,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'messageCalendar';

  @override
  String getConstructor() => CONSTRUCTOR;
}
