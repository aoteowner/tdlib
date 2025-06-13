import '../tdapi.dart';

class StarTransaction extends TdObject {

  /// Represents a transaction changing the amount of owned Telegram Stars
  const StarTransaction({
    required this.id,
    required this.starAmount,
    required this.isRefund,
    required this.date,
    required this.type,
  });
  
  /// [id] Unique identifier of the transaction
  final String id;

  /// [starAmount] The amount of added owned Telegram Stars; negative for outgoing transactions
  final StarAmount starAmount;

  /// [isRefund] True, if the transaction is a refund of a previous transaction
  final bool isRefund;

  /// [date] Point in time (Unix timestamp) when the transaction was completed
  final int date;

  /// [type] Type of the transaction
  final StarTransactionType type;
  
  /// Parse from a json
  factory StarTransaction.fromJson(Map<String, dynamic> json) => StarTransaction(
    id: json['id'] ?? '',
    starAmount: StarAmount.fromJson(json['star_amount'] ?? {}),
    isRefund: json['is_refund'] ?? false,
    date: json['date'] ?? 0,
    type: StarTransactionType.fromJson(json['type'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "star_amount": starAmount.toJson(),
      "is_refund": isRefund,
      "date": date,
      "type": type.toJson(),
    };
  }
  
  StarTransaction copyWith({
    String? id,
    StarAmount? starAmount,
    bool? isRefund,
    int? date,
    StarTransactionType? type,
  }) => StarTransaction(
    id: id ?? this.id,
    starAmount: starAmount ?? this.starAmount,
    isRefund: isRefund ?? this.isRefund,
    date: date ?? this.date,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'starTransaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
