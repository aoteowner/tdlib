part of '../tdapi.dart';

class EditUserStarSubscription extends TdFunction {

  /// Cancels or re-enables Telegram Star subscription for a user; for bots only
  const EditUserStarSubscription({
    required this.userId,
    required this.telegramPaymentChargeId,
    required this.isCanceled,
  });
  
  /// [userId] User identifier
  final int userId;

  /// [telegramPaymentChargeId] Telegram payment identifier of the subscription
  final String telegramPaymentChargeId;

  /// [isCanceled] Pass true to cancel the subscription; pass false to allow the user to enable it
  final bool isCanceled;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "telegram_payment_charge_id": telegramPaymentChargeId,
      "is_canceled": isCanceled,
      "@extra": extra,
    };
  }
  
  EditUserStarSubscription copyWith({
    int? userId,
    String? telegramPaymentChargeId,
    bool? isCanceled,
  }) => EditUserStarSubscription(
    userId: userId ?? this.userId,
    telegramPaymentChargeId: telegramPaymentChargeId ?? this.telegramPaymentChargeId,
    isCanceled: isCanceled ?? this.isCanceled,
  );

  static const CONSTRUCTOR = 'editUserStarSubscription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
