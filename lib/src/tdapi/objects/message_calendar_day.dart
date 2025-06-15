import '../tdapi.dart';

class MessageCalendarDay extends TdObject {
  /// Contains information about found messages sent on a specific day
  const MessageCalendarDay({
    required this.totalCount,
    required this.message,
  });

  /// [totalCount] Total number of found messages sent on the day
  final int totalCount;

  /// [message] First message sent on the day
  final Message message;

  factory MessageCalendarDay.fromJson(Map<String, dynamic> json) =>
      MessageCalendarDay(
        totalCount: json['total_count'] ?? 0,
        message: Message.fromJson(json['message'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "message": message.toJson(),
    };
  }

  MessageCalendarDay copyWith({
    int? totalCount,
    Message? message,
  }) {
    return MessageCalendarDay(
      totalCount: totalCount ?? this.totalCount,
      message: message ?? this.message,
    );
  }

  static const CONSTRUCTOR = 'messageCalendarDay';

  @override
  String getConstructor() => CONSTRUCTOR;
}
