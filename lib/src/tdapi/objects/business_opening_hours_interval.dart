import '../tdapi.dart';

class BusinessOpeningHoursInterval extends TdObject {
  /// Describes an interval of time when the business is open
  const BusinessOpeningHoursInterval({
    required this.startMinute,
    required this.endMinute,
  });

  /// [startMinute] The minute's sequence number in a week, starting on Monday, marking the start of the time interval during which the business is open; 0-7*24*60
  final int startMinute;

  /// [endMinute] The minute's sequence number in a week, starting on Monday, marking the end of the time interval during which the business is open; 1-8*24*60
  final int endMinute;

  factory BusinessOpeningHoursInterval.fromJson(Map<String, dynamic> json) =>
      BusinessOpeningHoursInterval(
        startMinute: json['start_minute'] ?? 0,
        endMinute: json['end_minute'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "start_minute": startMinute,
      "end_minute": endMinute,
    };
  }

  BusinessOpeningHoursInterval copyWith({
    int? startMinute,
    int? endMinute,
  }) {
    return BusinessOpeningHoursInterval(
      startMinute: startMinute ?? this.startMinute,
      endMinute: endMinute ?? this.endMinute,
    );
  }

  static const CONSTRUCTOR = 'businessOpeningHoursInterval';

  @override
  String getConstructor() => CONSTRUCTOR;
}
