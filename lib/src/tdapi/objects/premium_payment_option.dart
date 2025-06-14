import '../tdapi.dart';

class PremiumPaymentOption extends TdObject {
  /// Describes an option for buying Telegram Premium to a user
  const PremiumPaymentOption({
    required this.currency,
    required this.amount,
    required this.discountPercentage,
    required this.monthCount,
    required this.storeProductId,
    this.paymentLink,
  });

  /// [currency] ISO 4217 currency code for Telegram Premium subscription payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [discountPercentage] The discount associated with this option, as a percentage
  final int discountPercentage;

  /// [monthCount] Number of months the Telegram Premium subscription will be active. Use getPremiumInfoSticker to get the sticker to be used as representation of the Telegram Premium subscription
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the option
  final String storeProductId;

  /// [paymentLink] An internal link to be opened for buying Telegram Premium to the user if store payment isn't possible; may be null if direct payment isn't available
  final InternalLinkType? paymentLink;

  factory PremiumPaymentOption.fromJson(Map<String, dynamic> json) =>
      PremiumPaymentOption(
        currency: json['currency'] ?? '',
        amount: json['amount'] ?? 0,
        discountPercentage: json['discount_percentage'] ?? 0,
        monthCount: json['month_count'] ?? 0,
        storeProductId: json['store_product_id'] ?? '',
        paymentLink: InternalLinkType.fromJson(json['payment_link'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "discount_percentage": discountPercentage,
      "month_count": monthCount,
      "store_product_id": storeProductId,
      "payment_link": paymentLink?.toJson(),
    };
  }

  PremiumPaymentOption copyWith({
    String? currency,
    int? amount,
    int? discountPercentage,
    int? monthCount,
    String? storeProductId,
    InternalLinkType? paymentLink,
  }) {
    return PremiumPaymentOption(
      currency: currency ?? this.currency,
      amount: amount ?? this.amount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      monthCount: monthCount ?? this.monthCount,
      storeProductId: storeProductId ?? this.storeProductId,
      paymentLink: paymentLink ?? this.paymentLink,
    );
  }

  static const CONSTRUCTOR = 'premiumPaymentOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
