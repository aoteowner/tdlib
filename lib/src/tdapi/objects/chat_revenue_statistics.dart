part of '../tdapi.dart';

class ChatRevenueStatistics extends TdObject {

  /// A detailed statistics about revenue earned from sponsored messages in a chat
  const ChatRevenueStatistics({
    required this.revenueByHourGraph,
    required this.revenueGraph,
    required this.revenueAmount,
    required this.usdRate,
    this.extra,
    this.clientId,
  });
  
  /// [revenueByHourGraph] A graph containing amount of revenue in a given hour
  final StatisticalGraph revenueByHourGraph;

  /// [revenueGraph] A graph containing amount of revenue
  final StatisticalGraph revenueGraph;

  /// [revenueAmount] Amount of earned revenue
  final ChatRevenueAmount revenueAmount;

  /// [usdRate] Current conversion rate of the cryptocurrency in which revenue is calculated to USD
  final double usdRate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatRevenueStatistics.fromJson(Map<String, dynamic> json) => ChatRevenueStatistics(
    revenueByHourGraph: StatisticalGraph.fromJson(json['revenue_by_hour_graph']),
    revenueGraph: StatisticalGraph.fromJson(json['revenue_graph']),
    revenueAmount: ChatRevenueAmount.fromJson(json['revenue_amount']),
    usdRate: json['usd_rate'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "revenue_by_hour_graph": revenueByHourGraph.toJson(),
      "revenue_graph": revenueGraph.toJson(),
      "revenue_amount": revenueAmount.toJson(),
      "usd_rate": usdRate,
    };
  }
  
  ChatRevenueStatistics copyWith({
    StatisticalGraph? revenueByHourGraph,
    StatisticalGraph? revenueGraph,
    ChatRevenueAmount? revenueAmount,
    double? usdRate,
    dynamic extra,
    int? clientId,
  }) => ChatRevenueStatistics(
    revenueByHourGraph: revenueByHourGraph ?? this.revenueByHourGraph,
    revenueGraph: revenueGraph ?? this.revenueGraph,
    revenueAmount: revenueAmount ?? this.revenueAmount,
    usdRate: usdRate ?? this.usdRate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatRevenueStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
