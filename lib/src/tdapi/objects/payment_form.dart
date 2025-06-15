import '../tdapi.dart';

class PaymentForm extends TdObject {
  /// Contains information about an invoice payment form
  const PaymentForm({
    required this.id,
    required this.type,
    required this.sellerBotUserId,
    required this.productInfo,
    this.extra,
    this.clientId,
  });

  /// [id] The payment form identifier
  final int id;

  /// [type] Type of the payment form
  final PaymentFormType type;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [productInfo] Information about the product
  final ProductInfo productInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory PaymentForm.fromJson(Map<String, dynamic> json) => PaymentForm(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        type: PaymentFormType.fromJson(json['type'] ?? {}),
        sellerBotUserId: json['seller_bot_user_id'] ?? 0,
        productInfo: ProductInfo.fromJson(json['product_info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "type": type.toJson(),
      "seller_bot_user_id": sellerBotUserId,
      "product_info": productInfo.toJson(),
    };
  }

  PaymentForm copyWith({
    int? id,
    PaymentFormType? type,
    int? sellerBotUserId,
    ProductInfo? productInfo,
    dynamic extra,
    int? clientId,
  }) {
    return PaymentForm(
      id: id ?? this.id,
      type: type ?? this.type,
      sellerBotUserId: sellerBotUserId ?? this.sellerBotUserId,
      productInfo: productInfo ?? this.productInfo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'paymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
