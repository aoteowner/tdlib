part of '../tdapi.dart';

class GetStarGiveawayPaymentOptions extends TdFunction {

  /// Returns available options for Telegram Star giveaway creation
  const GetStarGiveawayPaymentOptions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetStarGiveawayPaymentOptions copyWith() => const GetStarGiveawayPaymentOptions();

  static const CONSTRUCTOR = 'getStarGiveawayPaymentOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
