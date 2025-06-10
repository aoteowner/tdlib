part of '../tdapi.dart';

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
  
  /// Parse from a json
  factory BusinessOpeningHours.fromJson(Map<String, dynamic> json) => BusinessOpeningHours(
    timeZoneId: json['time_zone_id'],
    openingHours: List<BusinessOpeningHoursInterval>.from((json['opening_hours'] ?? []).map((item) => BusinessOpeningHoursInterval.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "time_zone_id": timeZoneId,
      "opening_hours": openingHours.map((i) => i.toJson()).toList(),
    };
  }
  
  BusinessOpeningHours copyWith({
    String? timeZoneId,
    List<BusinessOpeningHoursInterval>? openingHours,
  }) => BusinessOpeningHours(
    timeZoneId: timeZoneId ?? this.timeZoneId,
    openingHours: openingHours ?? this.openingHours,
  );

  static const CONSTRUCTOR = 'businessOpeningHours';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
