import '../tdapi.dart';

class ChatRevenueAmount extends TdObject {
  /// Contains information about revenue earned from sponsored messages in a chat
  const ChatRevenueAmount({
    required this.cryptocurrency,
    required this.totalAmount,
    required this.balanceAmount,
    required this.availableAmount,
    required this.withdrawalEnabled,
  });

  /// [cryptocurrency] Cryptocurrency in which revenue is calculated
  final String cryptocurrency;

  /// [totalAmount] Total amount of the cryptocurrency earned, in the smallest units of the cryptocurrency
  final int totalAmount;

  /// [balanceAmount] Amount of the cryptocurrency that isn't withdrawn yet, in the smallest units of the cryptocurrency
  final int balanceAmount;

  /// [availableAmount] Amount of the cryptocurrency available for withdrawal, in the smallest units of the cryptocurrency
  final int availableAmount;

  /// [withdrawalEnabled] True, if Telegram Stars can be withdrawn now or later
  final bool withdrawalEnabled;

  factory ChatRevenueAmount.fromJson(Map<String, dynamic> json) =>
      ChatRevenueAmount(
        cryptocurrency: json['cryptocurrency'] ?? '',
        totalAmount: int.tryParse(json['total_amount'] ?? '') ?? 0,
        balanceAmount: int.tryParse(json['balance_amount'] ?? '') ?? 0,
        availableAmount: int.tryParse(json['available_amount'] ?? '') ?? 0,
        withdrawalEnabled: json['withdrawal_enabled'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "cryptocurrency": cryptocurrency,
      "total_amount": totalAmount,
      "balance_amount": balanceAmount,
      "available_amount": availableAmount,
      "withdrawal_enabled": withdrawalEnabled,
    };
  }

  ChatRevenueAmount copyWith({
    String? cryptocurrency,
    int? totalAmount,
    int? balanceAmount,
    int? availableAmount,
    bool? withdrawalEnabled,
  }) {
    return ChatRevenueAmount(
      cryptocurrency: cryptocurrency ?? this.cryptocurrency,
      totalAmount: totalAmount ?? this.totalAmount,
      balanceAmount: balanceAmount ?? this.balanceAmount,
      availableAmount: availableAmount ?? this.availableAmount,
      withdrawalEnabled: withdrawalEnabled ?? this.withdrawalEnabled,
    );
  }

  static const CONSTRUCTOR = 'chatRevenueAmount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
