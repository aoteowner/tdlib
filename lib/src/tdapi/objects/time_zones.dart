import '../tdapi.dart';

class TimeZones extends TdObject {
  /// Contains a list of time zones
  const TimeZones({
    required this.timeZones,
    this.extra,
    this.clientId,
  });

  /// [timeZones] A list of time zones
  final List<TimeZone> timeZones;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory TimeZones.fromJson(Map<String, dynamic> json) => TimeZones(
        timeZones: json['time_zones'] == null
            ? <TimeZone>[]
            : (json['time_zones'] as List)
                .map((e) => TimeZone.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "time_zones": timeZones.map((e) => e.toJson()).toList(),
    };
  }

  TimeZones copyWith({
    List<TimeZone>? timeZones,
    dynamic extra,
    int? clientId,
  }) {
    return TimeZones(
      timeZones: timeZones ?? this.timeZones,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'timeZones';

  @override
  String getConstructor() => CONSTRUCTOR;
}
