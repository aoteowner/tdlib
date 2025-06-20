import '../tdapi.dart';

class ValidatedOrderInfo extends TdObject {
  /// Contains a temporary identifier of validated order information, which is stored for one hour, and the available shipping options
  const ValidatedOrderInfo({
    required this.orderInfoId,
    required this.shippingOptions,
    this.extra,
    this.clientId,
  });

  /// [orderInfoId] Temporary identifier of the order information
  final String orderInfoId;

  /// [shippingOptions] Available shipping options
  final List<ShippingOption> shippingOptions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ValidatedOrderInfo.fromJson(Map<String, dynamic> json) =>
      ValidatedOrderInfo(
        orderInfoId: json['order_info_id'] ?? '',
        shippingOptions: json['shipping_options'] == null
            ? <ShippingOption>[]
            : (json['shipping_options'] as List)
                .map((e) => ShippingOption.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "order_info_id": orderInfoId,
      "shipping_options": shippingOptions.map((e) => e.toJson()).toList(),
    };
  }

  ValidatedOrderInfo copyWith({
    String? orderInfoId,
    List<ShippingOption>? shippingOptions,
    dynamic extra,
    int? clientId,
  }) {
    return ValidatedOrderInfo(
      orderInfoId: orderInfoId ?? this.orderInfoId,
      shippingOptions: shippingOptions ?? this.shippingOptions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'validatedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
