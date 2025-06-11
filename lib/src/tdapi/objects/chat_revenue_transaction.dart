import '../tdapi.dart';

class ChatRevenueTransaction extends TdObject {

  /// Contains a chat revenue transactions
  const ChatRevenueTransaction({
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.type,
  });
  
  /// [cryptocurrency] Cryptocurrency in which revenue is calculated
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The withdrawn amount, in the smallest units of the cryptocurrency
  final int cryptocurrencyAmount;

  /// [type] Type of the transaction
  final ChatRevenueTransactionType type;
  
  /// Parse from a json
  factory ChatRevenueTransaction.fromJson(Map<String, dynamic> json) => ChatRevenueTransaction(
    cryptocurrency: json['cryptocurrency'],
    cryptocurrencyAmount: int.parse(json['cryptocurrency_amount']),
    type: ChatRevenueTransactionType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "cryptocurrency": cryptocurrency,
      "cryptocurrency_amount": cryptocurrencyAmount,
      "type": type.toJson(),
    };
  }
  
  ChatRevenueTransaction copyWith({
    String? cryptocurrency,
    int? cryptocurrencyAmount,
    ChatRevenueTransactionType? type,
  }) => ChatRevenueTransaction(
    cryptocurrency: cryptocurrency ?? this.cryptocurrency,
    cryptocurrencyAmount: cryptocurrencyAmount ?? this.cryptocurrencyAmount,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'chatRevenueTransaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
