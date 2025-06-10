part of '../tdapi.dart';

class GetStarPaymentOptions extends TdFunction {

  /// Returns available options for Telegram Stars purchase
  const GetStarPaymentOptions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetStarPaymentOptions copyWith() => const GetStarPaymentOptions();

  static const CONSTRUCTOR = 'getStarPaymentOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
