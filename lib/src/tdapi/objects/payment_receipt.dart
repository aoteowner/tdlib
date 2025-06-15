import '../tdapi.dart';

class PaymentReceipt extends TdObject {
  /// Contains information about a successful payment
  const PaymentReceipt({
    required this.productInfo,
    required this.date,
    required this.sellerBotUserId,
    required this.type,
    this.extra,
    this.clientId,
  });

  /// [productInfo] Information about the product
  final ProductInfo productInfo;

  /// [date] Point in time (Unix timestamp) when the payment was made
  final int date;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [type] Type of the payment receipt
  final PaymentReceiptType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory PaymentReceipt.fromJson(Map<String, dynamic> json) => PaymentReceipt(
        productInfo: ProductInfo.fromJson(json['product_info'] ?? {}),
        date: json['date'] ?? 0,
        sellerBotUserId: json['seller_bot_user_id'] ?? 0,
        type: PaymentReceiptType.fromJson(json['type'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "product_info": productInfo.toJson(),
      "date": date,
      "seller_bot_user_id": sellerBotUserId,
      "type": type.toJson(),
    };
  }

  PaymentReceipt copyWith({
    ProductInfo? productInfo,
    int? date,
    int? sellerBotUserId,
    PaymentReceiptType? type,
    dynamic extra,
    int? clientId,
  }) {
    return PaymentReceipt(
      productInfo: productInfo ?? this.productInfo,
      date: date ?? this.date,
      sellerBotUserId: sellerBotUserId ?? this.sellerBotUserId,
      type: type ?? this.type,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'paymentReceipt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
