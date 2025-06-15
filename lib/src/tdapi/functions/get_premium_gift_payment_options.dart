import '../tdapi.dart';

class GetPremiumGiftPaymentOptions extends TdFunction {
  /// Returns available options for gifting Telegram Premium to a user
  const GetPremiumGiftPaymentOptions();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetPremiumGiftPaymentOptions copyWith() {
    return const GetPremiumGiftPaymentOptions();
  }

  static const CONSTRUCTOR = 'getPremiumGiftPaymentOptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
