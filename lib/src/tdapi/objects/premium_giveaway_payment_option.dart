part of '../tdapi.dart';

class PremiumGiveawayPaymentOption extends TdObject {

  /// Describes an option for creating of Telegram Premium giveaway or manual distribution of Telegram Premium among chat members. Use telegramPaymentPurposePremiumGiftCodes or telegramPaymentPurposePremiumGiveaway for out-of-store payments
  const PremiumGiveawayPaymentOption({
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.monthCount,
    required this.storeProductId,
    required this.storeProductQuantity,
  });
  
  /// [currency] ISO 4217 currency code for Telegram Premium gift code payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [winnerCount] Number of users which will be able to activate the gift codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be active
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the option; may be empty if none
  final String storeProductId;

  /// [storeProductQuantity] Number of times the store product must be paid
  final int storeProductQuantity;
  
  /// Parse from a json
  factory PremiumGiveawayPaymentOption.fromJson(Map<String, dynamic> json) => PremiumGiveawayPaymentOption(
    currency: json['currency'],
    amount: json['amount'],
    winnerCount: json['winner_count'],
    monthCount: json['month_count'],
    storeProductId: json['store_product_id'],
    storeProductQuantity: json['store_product_quantity'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "winner_count": winnerCount,
      "month_count": monthCount,
      "store_product_id": storeProductId,
      "store_product_quantity": storeProductQuantity,
    };
  }
  
  PremiumGiveawayPaymentOption copyWith({
    String? currency,
    int? amount,
    int? winnerCount,
    int? monthCount,
    String? storeProductId,
    int? storeProductQuantity,
  }) => PremiumGiveawayPaymentOption(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    winnerCount: winnerCount ?? this.winnerCount,
    monthCount: monthCount ?? this.monthCount,
    storeProductId: storeProductId ?? this.storeProductId,
    storeProductQuantity: storeProductQuantity ?? this.storeProductQuantity,
  );

  static const CONSTRUCTOR = 'premiumGiveawayPaymentOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
