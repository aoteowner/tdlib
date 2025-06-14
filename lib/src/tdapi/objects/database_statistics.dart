import '../tdapi.dart';

class DatabaseStatistics extends TdObject {
  /// Contains database statistics
  const DatabaseStatistics({
    required this.statistics,
    this.extra,
    this.clientId,
  });

  /// [statistics] Database statistics in an unspecified human-readable format
  final String statistics;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory DatabaseStatistics.fromJson(Map<String, dynamic> json) =>
      DatabaseStatistics(
        statistics: json['statistics'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "statistics": statistics,
    };
  }

  DatabaseStatistics copyWith({
    String? statistics,
    dynamic extra,
    int? clientId,
  }) {
    return DatabaseStatistics(
      statistics: statistics ?? this.statistics,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'databaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
