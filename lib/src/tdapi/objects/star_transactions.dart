import '../tdapi.dart';

class StarTransactions extends TdObject {

  /// Represents a list of Telegram Star transactions
  const StarTransactions({
    required this.starAmount,
    required this.transactions,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// [starAmount] The amount of owned Telegram Stars
  final StarAmount starAmount;

  /// [transactions] List of transactions with Telegram Stars
  final List<StarTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StarTransactions.fromJson(Map<String, dynamic> json) => StarTransactions(
    starAmount: StarAmount.fromJson(json['star_amount'] ?? {}),
    transactions: json['transactions'] == null ? [] :(json['transactions'] as List).map((e) => StarTransaction.fromJson(e ?? {})).toList(),
    nextOffset: json['next_offset'] ?? '',
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_amount": starAmount.toJson(),
      "transactions": transactions.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }
  
  StarTransactions copyWith({
    StarAmount? starAmount,
    List<StarTransaction>? transactions,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => StarTransactions(
    starAmount: starAmount ?? this.starAmount,
    transactions: transactions ?? this.transactions,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'starTransactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
