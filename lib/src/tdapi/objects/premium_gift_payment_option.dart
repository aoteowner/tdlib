part of '../tdapi.dart';

class PremiumGiftPaymentOption extends TdObject {

  /// Describes an option for gifting Telegram Premium to a user. Use telegramPaymentPurposePremiumGift for out-of-store payments or payments in Telegram Stars
  const PremiumGiftPaymentOption({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.discountPercentage,
    required this.monthCount,
    required this.storeProductId,
    this.sticker,
  });
  
  /// [currency] ISO 4217 currency code for the payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [starCount] The alternative amount of Telegram Stars to pay; 0 if payment in Telegram Stars is not possible
  final int starCount;

  /// [discountPercentage] The discount associated with this option, as a percentage
  final int discountPercentage;

  /// [monthCount] Number of months the Telegram Premium subscription will be active
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the option
  final String storeProductId;

  /// [sticker] A sticker to be shown along with the option; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory PremiumGiftPaymentOption.fromJson(Map<String, dynamic> json) => PremiumGiftPaymentOption(
    currency: json['currency'],
    amount: json['amount'],
    starCount: json['star_count'],
    discountPercentage: json['discount_percentage'],
    monthCount: json['month_count'],
    storeProductId: json['store_product_id'],
    sticker: json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "star_count": starCount,
      "discount_percentage": discountPercentage,
      "month_count": monthCount,
      "store_product_id": storeProductId,
      "sticker": sticker?.toJson(),
    };
  }
  
  PremiumGiftPaymentOption copyWith({
    String? currency,
    int? amount,
    int? starCount,
    int? discountPercentage,
    int? monthCount,
    String? storeProductId,
    Sticker? sticker,
  }) => PremiumGiftPaymentOption(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    starCount: starCount ?? this.starCount,
    discountPercentage: discountPercentage ?? this.discountPercentage,
    monthCount: monthCount ?? this.monthCount,
    storeProductId: storeProductId ?? this.storeProductId,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'premiumGiftPaymentOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
