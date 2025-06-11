import '../tdapi.dart';

class PaymentReceiptType extends TdObject {

  /// Describes type of successful payment
  const PaymentReceiptType();
  
  /// a PaymentReceiptType return type can be :
  /// * [PaymentReceiptTypeRegular]
  /// * [PaymentReceiptTypeStars]
  factory PaymentReceiptType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PaymentReceiptTypeRegular.CONSTRUCTOR:
        return PaymentReceiptTypeRegular.fromJson(json);
      case PaymentReceiptTypeStars.CONSTRUCTOR:
        return PaymentReceiptTypeStars.fromJson(json);
      default:
        return const PaymentReceiptType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PaymentReceiptType copyWith() => const PaymentReceiptType();

  static const CONSTRUCTOR = 'paymentReceiptType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaymentReceiptTypeRegular extends PaymentReceiptType {

  /// The payment was done using a third-party payment provider
  const PaymentReceiptTypeRegular({
    required this.paymentProviderUserId,
    required this.invoice,
    this.orderInfo,
    this.shippingOption,
    required this.credentialsTitle,
    required this.tipAmount,
  });
  
  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [invoice] Information about the invoice
  final Invoice invoice;

  /// [orderInfo] Order information; may be null
  final OrderInfo? orderInfo;

  /// [shippingOption] Chosen shipping option; may be null
  final ShippingOption? shippingOption;

  /// [credentialsTitle] Title of the saved credentials chosen by the buyer
  final String credentialsTitle;

  /// [tipAmount] The amount of tip chosen by the buyer in the smallest units of the currency
  final int tipAmount;
  
  /// Parse from a json
  factory PaymentReceiptTypeRegular.fromJson(Map<String, dynamic> json) => PaymentReceiptTypeRegular(
    paymentProviderUserId: json['payment_provider_user_id'],
    invoice: Invoice.fromJson(json['invoice']),
    orderInfo: json['order_info'] == null ? null : OrderInfo.fromJson(json['order_info']),
    shippingOption: json['shipping_option'] == null ? null : ShippingOption.fromJson(json['shipping_option']),
    credentialsTitle: json['credentials_title'],
    tipAmount: json['tip_amount'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "payment_provider_user_id": paymentProviderUserId,
      "invoice": invoice.toJson(),
      "order_info": orderInfo?.toJson(),
      "shipping_option": shippingOption?.toJson(),
      "credentials_title": credentialsTitle,
      "tip_amount": tipAmount,
    };
  }
  
  @override
  PaymentReceiptTypeRegular copyWith({
    int? paymentProviderUserId,
    Invoice? invoice,
    OrderInfo? orderInfo,
    ShippingOption? shippingOption,
    String? credentialsTitle,
    int? tipAmount,
  }) => PaymentReceiptTypeRegular(
    paymentProviderUserId: paymentProviderUserId ?? this.paymentProviderUserId,
    invoice: invoice ?? this.invoice,
    orderInfo: orderInfo ?? this.orderInfo,
    shippingOption: shippingOption ?? this.shippingOption,
    credentialsTitle: credentialsTitle ?? this.credentialsTitle,
    tipAmount: tipAmount ?? this.tipAmount,
  );

  static const CONSTRUCTOR = 'paymentReceiptTypeRegular';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaymentReceiptTypeStars extends PaymentReceiptType {

  /// The payment was done using Telegram Stars
  const PaymentReceiptTypeStars({
    required this.starCount,
    required this.transactionId,
  });
  
  /// [starCount] Number of Telegram Stars that were paid
  final int starCount;

  /// [transactionId] Unique identifier of the transaction that can be used to dispute it
  final String transactionId;
  
  /// Parse from a json
  factory PaymentReceiptTypeStars.fromJson(Map<String, dynamic> json) => PaymentReceiptTypeStars(
    starCount: json['star_count'],
    transactionId: json['transaction_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
      "transaction_id": transactionId,
    };
  }
  
  @override
  PaymentReceiptTypeStars copyWith({
    int? starCount,
    String? transactionId,
  }) => PaymentReceiptTypeStars(
    starCount: starCount ?? this.starCount,
    transactionId: transactionId ?? this.transactionId,
  );

  static const CONSTRUCTOR = 'paymentReceiptTypeStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
