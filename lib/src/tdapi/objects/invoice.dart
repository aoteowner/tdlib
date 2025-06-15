import '../tdapi.dart';

class Invoice extends TdObject {
  /// Product invoice
  const Invoice({
    required this.currency,
    required this.priceParts,
    required this.subscriptionPeriod,
    required this.maxTipAmount,
    required this.suggestedTipAmounts,
    required this.recurringPaymentTermsOfServiceUrl,
    required this.termsOfServiceUrl,
    required this.isTest,
    required this.needName,
    required this.needPhoneNumber,
    required this.needEmailAddress,
    required this.needShippingAddress,
    required this.sendPhoneNumberToProvider,
    required this.sendEmailAddressToProvider,
    required this.isFlexible,
  });

  /// [currency] ISO 4217 currency code
  final String currency;

  /// [priceParts] A list of objects used to calculate the total price of the product
  final List<LabeledPricePart> priceParts;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram Star debiting for subscription invoices; 0 if the invoice doesn't create subscription
  final int subscriptionPeriod;

  /// [maxTipAmount] The maximum allowed amount of tip in the smallest units of the currency
  final int maxTipAmount;

  /// [suggestedTipAmounts] Suggested amounts of tip in the smallest units of the currency
  final List<int> suggestedTipAmounts;

  /// [recurringPaymentTermsOfServiceUrl] An HTTP URL with terms of service for recurring payments. If non-empty, the invoice payment will result in recurring payments and the user must accept the terms of service before allowed to pay
  final String recurringPaymentTermsOfServiceUrl;

  /// [termsOfServiceUrl] An HTTP URL with terms of service for non-recurring payments. If non-empty, then the user must accept the terms of service before allowed to pay
  final String termsOfServiceUrl;

  /// [isTest] True, if the payment is a test payment
  final bool isTest;

  /// [needName] True, if the user's name is needed for payment
  final bool needName;

  /// [needPhoneNumber] True, if the user's phone number is needed for payment
  final bool needPhoneNumber;

  /// [needEmailAddress] True, if the user's email address is needed for payment
  final bool needEmailAddress;

  /// [needShippingAddress] True, if the user's shipping address is needed for payment
  final bool needShippingAddress;

  /// [sendPhoneNumberToProvider] True, if the user's phone number will be sent to the provider
  final bool sendPhoneNumberToProvider;

  /// [sendEmailAddressToProvider] True, if the user's email address will be sent to the provider
  final bool sendEmailAddressToProvider;

  /// [isFlexible] True, if the total price depends on the shipping method
  final bool isFlexible;

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
        currency: json['currency'] ?? '',
        priceParts: json['price_parts'] == null
            ? <LabeledPricePart>[]
            : (json['price_parts'] as List)
                .map((e) => LabeledPricePart.fromJson(e ?? {}))
                .toList(),
        subscriptionPeriod: json['subscription_period'] ?? 0,
        maxTipAmount: json['max_tip_amount'] ?? 0,
        suggestedTipAmounts: json['suggested_tip_amounts'] == null
            ? <int>[]
            : (json['suggested_tip_amounts'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        recurringPaymentTermsOfServiceUrl:
            json['recurring_payment_terms_of_service_url'] ?? '',
        termsOfServiceUrl: json['terms_of_service_url'] ?? '',
        isTest: json['is_test'] ?? false,
        needName: json['need_name'] ?? false,
        needPhoneNumber: json['need_phone_number'] ?? false,
        needEmailAddress: json['need_email_address'] ?? false,
        needShippingAddress: json['need_shipping_address'] ?? false,
        sendPhoneNumberToProvider:
            json['send_phone_number_to_provider'] ?? false,
        sendEmailAddressToProvider:
            json['send_email_address_to_provider'] ?? false,
        isFlexible: json['is_flexible'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "price_parts": priceParts.map((e) => e.toJson()).toList(),
      "subscription_period": subscriptionPeriod,
      "max_tip_amount": maxTipAmount,
      "suggested_tip_amounts": suggestedTipAmounts,
      "recurring_payment_terms_of_service_url":
          recurringPaymentTermsOfServiceUrl,
      "terms_of_service_url": termsOfServiceUrl,
      "is_test": isTest,
      "need_name": needName,
      "need_phone_number": needPhoneNumber,
      "need_email_address": needEmailAddress,
      "need_shipping_address": needShippingAddress,
      "send_phone_number_to_provider": sendPhoneNumberToProvider,
      "send_email_address_to_provider": sendEmailAddressToProvider,
      "is_flexible": isFlexible,
    };
  }

  Invoice copyWith({
    String? currency,
    List<LabeledPricePart>? priceParts,
    int? subscriptionPeriod,
    int? maxTipAmount,
    List<int>? suggestedTipAmounts,
    String? recurringPaymentTermsOfServiceUrl,
    String? termsOfServiceUrl,
    bool? isTest,
    bool? needName,
    bool? needPhoneNumber,
    bool? needEmailAddress,
    bool? needShippingAddress,
    bool? sendPhoneNumberToProvider,
    bool? sendEmailAddressToProvider,
    bool? isFlexible,
  }) {
    return Invoice(
      currency: currency ?? this.currency,
      priceParts: priceParts ?? this.priceParts,
      subscriptionPeriod: subscriptionPeriod ?? this.subscriptionPeriod,
      maxTipAmount: maxTipAmount ?? this.maxTipAmount,
      suggestedTipAmounts: suggestedTipAmounts ?? this.suggestedTipAmounts,
      recurringPaymentTermsOfServiceUrl: recurringPaymentTermsOfServiceUrl ??
          this.recurringPaymentTermsOfServiceUrl,
      termsOfServiceUrl: termsOfServiceUrl ?? this.termsOfServiceUrl,
      isTest: isTest ?? this.isTest,
      needName: needName ?? this.needName,
      needPhoneNumber: needPhoneNumber ?? this.needPhoneNumber,
      needEmailAddress: needEmailAddress ?? this.needEmailAddress,
      needShippingAddress: needShippingAddress ?? this.needShippingAddress,
      sendPhoneNumberToProvider:
          sendPhoneNumberToProvider ?? this.sendPhoneNumberToProvider,
      sendEmailAddressToProvider:
          sendEmailAddressToProvider ?? this.sendEmailAddressToProvider,
      isFlexible: isFlexible ?? this.isFlexible,
    );
  }

  static const CONSTRUCTOR = 'invoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}
