import '../tdapi.dart';

class ChatRevenueTransactions extends TdObject {
  /// Contains a list of chat revenue transactions
  const ChatRevenueTransactions({
    required this.totalCount,
    required this.transactions,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Total number of transactions
  final int totalCount;

  /// [transactions] List of transactions
  final List<ChatRevenueTransaction> transactions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatRevenueTransactions.fromJson(Map<String, dynamic> json) =>
      ChatRevenueTransactions(
        totalCount: json['total_count'] ?? 0,
        transactions: json['transactions'] == null
            ? <ChatRevenueTransaction>[]
            : (json['transactions'] as List)
                .map((e) => ChatRevenueTransaction.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "transactions": transactions.map((e) => e.toJson()).toList(),
    };
  }

  ChatRevenueTransactions copyWith({
    int? totalCount,
    List<ChatRevenueTransaction>? transactions,
    dynamic extra,
    int? clientId,
  }) {
    return ChatRevenueTransactions(
      totalCount: totalCount ?? this.totalCount,
      transactions: transactions ?? this.transactions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatRevenueTransactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
