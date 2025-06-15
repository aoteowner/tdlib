import '../tdapi.dart';

class BusinessOpeningHours extends TdObject {
  /// Describes opening hours of a business
  const BusinessOpeningHours({
    required this.timeZoneId,
    required this.openingHours,
  });

  /// [timeZoneId] Unique time zone identifier
  final String timeZoneId;

  /// [openingHours] Intervals of the time when the business is open
  final List<BusinessOpeningHoursInterval> openingHours;

  factory BusinessOpeningHours.fromJson(Map<String, dynamic> json) =>
      BusinessOpeningHours(
        timeZoneId: json['time_zone_id'] ?? '',
        openingHours: json['opening_hours'] == null
            ? <BusinessOpeningHoursInterval>[]
            : (json['opening_hours'] as List)
                .map((e) => BusinessOpeningHoursInterval.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "time_zone_id": timeZoneId,
      "opening_hours": openingHours.map((e) => e.toJson()).toList(),
    };
  }

  BusinessOpeningHours copyWith({
    String? timeZoneId,
    List<BusinessOpeningHoursInterval>? openingHours,
  }) {
    return BusinessOpeningHours(
      timeZoneId: timeZoneId ?? this.timeZoneId,
      openingHours: openingHours ?? this.openingHours,
    );
  }

  static const CONSTRUCTOR = 'businessOpeningHours';

  @override
  String getConstructor() => CONSTRUCTOR;
}
