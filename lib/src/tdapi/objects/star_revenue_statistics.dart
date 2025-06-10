part of '../tdapi.dart';

class StarRevenueStatistics extends TdObject {

  /// A detailed statistics about Telegram Stars earned by a bot or a chat
  const StarRevenueStatistics({
    required this.revenueByDayGraph,
    required this.status,
    required this.usdRate,
    this.extra,
    this.clientId,
  });
  
  /// [revenueByDayGraph] A graph containing amount of revenue in a given day
  final StatisticalGraph revenueByDayGraph;

  /// [status] Telegram Star revenue status
  final StarRevenueStatus status;

  /// [usdRate] Current conversion rate of a Telegram Star to USD
  final double usdRate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StarRevenueStatistics.fromJson(Map<String, dynamic> json) => StarRevenueStatistics(
    revenueByDayGraph: StatisticalGraph.fromJson(json['revenue_by_day_graph']),
    status: StarRevenueStatus.fromJson(json['status']),
    usdRate: json['usd_rate'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "revenue_by_day_graph": revenueByDayGraph.toJson(),
      "status": status.toJson(),
      "usd_rate": usdRate,
    };
  }
  
  StarRevenueStatistics copyWith({
    StatisticalGraph? revenueByDayGraph,
    StarRevenueStatus? status,
    double? usdRate,
    dynamic extra,
    int? clientId,
  }) => StarRevenueStatistics(
    revenueByDayGraph: revenueByDayGraph ?? this.revenueByDayGraph,
    status: status ?? this.status,
    usdRate: usdRate ?? this.usdRate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'starRevenueStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
