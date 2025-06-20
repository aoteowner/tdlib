import '../tdapi.dart';

class TimeZone extends TdObject {
  /// Describes a time zone
  const TimeZone({
    required this.id,
    required this.name,
    required this.utcTimeOffset,
  });

  /// [id] Unique time zone identifier
  final String id;

  /// [name] Time zone name
  final String name;

  /// [utcTimeOffset] Current UTC time offset for the time zone
  final int utcTimeOffset;

  factory TimeZone.fromJson(Map<String, dynamic> json) => TimeZone(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
        utcTimeOffset: json['utc_time_offset'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "name": name,
      "utc_time_offset": utcTimeOffset,
    };
  }

  TimeZone copyWith({
    String? id,
    String? name,
    int? utcTimeOffset,
  }) {
    return TimeZone(
      id: id ?? this.id,
      name: name ?? this.name,
      utcTimeOffset: utcTimeOffset ?? this.utcTimeOffset,
    );
  }

  static const CONSTRUCTOR = 'timeZone';

  @override
  String getConstructor() => CONSTRUCTOR;
}
