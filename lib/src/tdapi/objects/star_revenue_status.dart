import '../tdapi.dart';

class StarRevenueStatus extends TdObject {

  /// Contains information about Telegram Stars earned by a bot or a chat
  const StarRevenueStatus({
    required this.totalAmount,
    required this.currentAmount,
    required this.availableAmount,
    required this.withdrawalEnabled,
    required this.nextWithdrawalIn,
  });
  
  /// [totalAmount] Total amount of Telegram Stars earned
  final StarAmount totalAmount;

  /// [currentAmount] The amount of Telegram Stars that aren't withdrawn yet
  final StarAmount currentAmount;

  /// [availableAmount] The amount of Telegram Stars that are available for withdrawal
  final StarAmount availableAmount;

  /// [withdrawalEnabled] True, if Telegram Stars can be withdrawn now or later
  final bool withdrawalEnabled;

  /// [nextWithdrawalIn] Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now
  final int nextWithdrawalIn;
  
  /// Parse from a json
  factory StarRevenueStatus.fromJson(Map<String, dynamic> json) => StarRevenueStatus(
    totalAmount: StarAmount.fromJson(json['total_amount'] ?? {}),
    currentAmount: StarAmount.fromJson(json['current_amount'] ?? {}),
    availableAmount: StarAmount.fromJson(json['available_amount'] ?? {}),
    withdrawalEnabled: json['withdrawal_enabled'] ?? false,
    nextWithdrawalIn: json['next_withdrawal_in'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_amount": totalAmount.toJson(),
      "current_amount": currentAmount.toJson(),
      "available_amount": availableAmount.toJson(),
      "withdrawal_enabled": withdrawalEnabled,
      "next_withdrawal_in": nextWithdrawalIn,
    };
  }
  
  StarRevenueStatus copyWith({
    StarAmount? totalAmount,
    StarAmount? currentAmount,
    StarAmount? availableAmount,
    bool? withdrawalEnabled,
    int? nextWithdrawalIn,
  }) => StarRevenueStatus(
    totalAmount: totalAmount ?? this.totalAmount,
    currentAmount: currentAmount ?? this.currentAmount,
    availableAmount: availableAmount ?? this.availableAmount,
    withdrawalEnabled: withdrawalEnabled ?? this.withdrawalEnabled,
    nextWithdrawalIn: nextWithdrawalIn ?? this.nextWithdrawalIn,
  );

  static const CONSTRUCTOR = 'starRevenueStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
