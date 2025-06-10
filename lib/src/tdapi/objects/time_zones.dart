part of '../tdapi.dart';

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
  
  /// Parse from a json
  factory TimeZones.fromJson(Map<String, dynamic> json) => TimeZones(
    timeZones: List<TimeZone>.from((json['time_zones'] ?? []).map((item) => TimeZone.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "time_zones": timeZones.map((i) => i.toJson()).toList(),
    };
  }
  
  TimeZones copyWith({
    List<TimeZone>? timeZones,
    dynamic extra,
    int? clientId,
  }) => TimeZones(
    timeZones: timeZones ?? this.timeZones,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'timeZones';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
