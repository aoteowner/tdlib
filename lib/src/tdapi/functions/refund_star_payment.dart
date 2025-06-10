part of '../tdapi.dart';

class RefundStarPayment extends TdFunction {

  /// Refunds a previously done payment in Telegram Stars; for bots only
  const RefundStarPayment({
    required this.userId,
    required this.telegramPaymentChargeId,
  });
  
  /// [userId] Identifier of the user that did the payment
  final int userId;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "telegram_payment_charge_id": telegramPaymentChargeId,
      "@extra": extra,
    };
  }
  
  RefundStarPayment copyWith({
    int? userId,
    String? telegramPaymentChargeId,
  }) => RefundStarPayment(
    userId: userId ?? this.userId,
    telegramPaymentChargeId: telegramPaymentChargeId ?? this.telegramPaymentChargeId,
  );

  static const CONSTRUCTOR = 'refundStarPayment';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
