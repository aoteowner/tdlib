import '../tdapi.dart';

class CheckAuthenticationPremiumPurchase extends TdFunction {
  /// Checks whether an in-store purchase of Telegram Premium is possible before authorization. Works only when the current authorization state is authorizationStateWaitPremiumPurchase
  const CheckAuthenticationPremiumPurchase({
    required this.currency,
    required this.amount,
  });

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "@extra": extra,
    };
  }

  CheckAuthenticationPremiumPurchase copyWith({
    String? currency,
    int? amount,
  }) {
    return CheckAuthenticationPremiumPurchase(
      currency: currency ?? this.currency,
      amount: amount ?? this.amount,
    );
  }

  static const CONSTRUCTOR = 'checkAuthenticationPremiumPurchase';

  @override
  String getConstructor() => CONSTRUCTOR;
}
