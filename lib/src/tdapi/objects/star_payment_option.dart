import '../tdapi.dart';

class StarPaymentOption extends TdObject {

  /// Describes an option for buying Telegram Stars. Use telegramPaymentPurposeStars for out-of-store payments
  const StarPaymentOption({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.storeProductId,
    required this.isAdditional,
  });
  
  /// [currency] ISO 4217 currency code for the payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of Telegram Stars that will be purchased
  final int starCount;

  /// [storeProductId] Identifier of the store product associated with the option; may be empty if none
  final String storeProductId;

  /// [isAdditional] True, if the option must be shown only in the full list of payment options
  final bool isAdditional;
  
  /// Parse from a json
  factory StarPaymentOption.fromJson(Map<String, dynamic> json) => StarPaymentOption(
    currency: json['currency'],
    amount: json['amount'],
    starCount: json['star_count'],
    storeProductId: json['store_product_id'],
    isAdditional: json['is_additional'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "star_count": starCount,
      "store_product_id": storeProductId,
      "is_additional": isAdditional,
    };
  }
  
  StarPaymentOption copyWith({
    String? currency,
    int? amount,
    int? starCount,
    String? storeProductId,
    bool? isAdditional,
  }) => StarPaymentOption(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    starCount: starCount ?? this.starCount,
    storeProductId: storeProductId ?? this.storeProductId,
    isAdditional: isAdditional ?? this.isAdditional,
  );

  static const CONSTRUCTOR = 'starPaymentOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
