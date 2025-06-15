import '../tdapi.dart';

class NetworkStatistics extends TdObject {
  /// A full list of available network statistic entries
  const NetworkStatistics({
    required this.sinceDate,
    required this.entries,
    this.extra,
    this.clientId,
  });

  /// [sinceDate] Point in time (Unix timestamp) from which the statistics are collected
  final int sinceDate;

  /// [entries] Network statistics entries
  final List<NetworkStatisticsEntry> entries;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory NetworkStatistics.fromJson(Map<String, dynamic> json) =>
      NetworkStatistics(
        sinceDate: json['since_date'] ?? 0,
        entries: json['entries'] == null
            ? <NetworkStatisticsEntry>[]
            : (json['entries'] as List)
                .map((e) => NetworkStatisticsEntry.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "since_date": sinceDate,
      "entries": entries.map((e) => e.toJson()).toList(),
    };
  }

  NetworkStatistics copyWith({
    int? sinceDate,
    List<NetworkStatisticsEntry>? entries,
    dynamic extra,
    int? clientId,
  }) {
    return NetworkStatistics(
      sinceDate: sinceDate ?? this.sinceDate,
      entries: entries ?? this.entries,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'networkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
