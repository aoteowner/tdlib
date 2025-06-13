import '../tdapi.dart';

class PaymentFormType extends TdObject {

  /// Describes type of payment form
  const PaymentFormType();
  
  /// a PaymentFormType return type can be :
  /// * [PaymentFormTypeRegular]
  /// * [PaymentFormTypeStars]
  /// * [PaymentFormTypeStarSubscription]
  factory PaymentFormType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PaymentFormTypeRegular.CONSTRUCTOR:
        return PaymentFormTypeRegular.fromJson(json);
      case PaymentFormTypeStars.CONSTRUCTOR:
        return PaymentFormTypeStars.fromJson(json);
      case PaymentFormTypeStarSubscription.CONSTRUCTOR:
        return PaymentFormTypeStarSubscription.fromJson(json);
      default:
        return const PaymentFormType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PaymentFormType copyWith() => const PaymentFormType();

  static const CONSTRUCTOR = 'paymentFormType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaymentFormTypeRegular extends PaymentFormType {

  /// The payment form is for a regular payment
  const PaymentFormTypeRegular({
    required this.invoice,
    required this.paymentProviderUserId,
    required this.paymentProvider,
    required this.additionalPaymentOptions,
    this.savedOrderInfo,
    required this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
  });
  
  /// [invoice] Full information about the invoice
  final Invoice invoice;

  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [paymentProvider] Information about the payment provider
  final PaymentProvider paymentProvider;

  /// [additionalPaymentOptions] The list of additional payment options
  final List<PaymentOption> additionalPaymentOptions;

  /// [savedOrderInfo] Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// [savedCredentials] The list of saved payment credentials
  final List<SavedCredentials> savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials, if sets up a 2-step verification password
  final bool needPassword;
  
  /// Parse from a json
  factory PaymentFormTypeRegular.fromJson(Map<String, dynamic> json) => PaymentFormTypeRegular(
    invoice: Invoice.fromJson(json['invoice'] ?? {}),
    paymentProviderUserId: json['payment_provider_user_id'] ?? 0,
    paymentProvider: PaymentProvider.fromJson(json['payment_provider'] ?? {}),
    additionalPaymentOptions: json['additional_payment_options'] == null ? <PaymentOption>[] :(json['additional_payment_options'] as List).map((e) => PaymentOption.fromJson(e ?? {})).toList(),
    savedOrderInfo: OrderInfo.fromJson(json['saved_order_info'] ?? {}),
    savedCredentials: json['saved_credentials'] == null ? <SavedCredentials>[] :(json['saved_credentials'] as List).map((e) => SavedCredentials.fromJson(e ?? {})).toList(),
    canSaveCredentials: json['can_save_credentials'] ?? false,
    needPassword: json['need_password'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invoice": invoice.toJson(),
      "payment_provider_user_id": paymentProviderUserId,
      "payment_provider": paymentProvider.toJson(),
      "additional_payment_options": additionalPaymentOptions.map((e) => e.toJson()).toList(),
      "saved_order_info": savedOrderInfo?.toJson(),
      "saved_credentials": savedCredentials.map((e) => e.toJson()).toList(),
      "can_save_credentials": canSaveCredentials,
      "need_password": needPassword,
    };
  }
  
  @override
  PaymentFormTypeRegular copyWith({
    Invoice? invoice,
    int? paymentProviderUserId,
    PaymentProvider? paymentProvider,
    List<PaymentOption>? additionalPaymentOptions,
    OrderInfo? savedOrderInfo,
    List<SavedCredentials>? savedCredentials,
    bool? canSaveCredentials,
    bool? needPassword,
  }) => PaymentFormTypeRegular(
    invoice: invoice ?? this.invoice,
    paymentProviderUserId: paymentProviderUserId ?? this.paymentProviderUserId,
    paymentProvider: paymentProvider ?? this.paymentProvider,
    additionalPaymentOptions: additionalPaymentOptions ?? this.additionalPaymentOptions,
    savedOrderInfo: savedOrderInfo ?? this.savedOrderInfo,
    savedCredentials: savedCredentials ?? this.savedCredentials,
    canSaveCredentials: canSaveCredentials ?? this.canSaveCredentials,
    needPassword: needPassword ?? this.needPassword,
  );

  static const CONSTRUCTOR = 'paymentFormTypeRegular';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaymentFormTypeStars extends PaymentFormType {

  /// The payment form is for a payment in Telegram Stars
  const PaymentFormTypeStars({
    required this.starCount,
  });
  
  /// [starCount] Number of Telegram Stars that will be paid
  final int starCount;
  
  /// Parse from a json
  factory PaymentFormTypeStars.fromJson(Map<String, dynamic> json) => PaymentFormTypeStars(
    starCount: json['star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
    };
  }
  
  @override
  PaymentFormTypeStars copyWith({
    int? starCount,
  }) => PaymentFormTypeStars(
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'paymentFormTypeStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaymentFormTypeStarSubscription extends PaymentFormType {

  /// The payment form is for a payment in Telegram Stars for subscription
  const PaymentFormTypeStarSubscription({
    required this.pricing,
  });
  
  /// [pricing] Information about subscription plan
  final StarSubscriptionPricing pricing;
  
  /// Parse from a json
  factory PaymentFormTypeStarSubscription.fromJson(Map<String, dynamic> json) => PaymentFormTypeStarSubscription(
    pricing: StarSubscriptionPricing.fromJson(json['pricing'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "pricing": pricing.toJson(),
    };
  }
  
  @override
  PaymentFormTypeStarSubscription copyWith({
    StarSubscriptionPricing? pricing,
  }) => PaymentFormTypeStarSubscription(
    pricing: pricing ?? this.pricing,
  );

  static const CONSTRUCTOR = 'paymentFormTypeStarSubscription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
