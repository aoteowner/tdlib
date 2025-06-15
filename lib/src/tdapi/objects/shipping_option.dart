import '../tdapi.dart';

class ShippingOption extends TdObject {
  /// One shipping option
  const ShippingOption({
    required this.id,
    required this.title,
    required this.priceParts,
  });

  /// [id] Shipping option identifier
  final String id;

  /// [title] Option title
  final String title;

  /// [priceParts] A list of objects used to calculate the total shipping costs
  final List<LabeledPricePart> priceParts;

  factory ShippingOption.fromJson(Map<String, dynamic> json) => ShippingOption(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        priceParts: json['price_parts'] == null
            ? <LabeledPricePart>[]
            : (json['price_parts'] as List)
                .map((e) => LabeledPricePart.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "price_parts": priceParts.map((e) => e.toJson()).toList(),
    };
  }

  ShippingOption copyWith({
    String? id,
    String? title,
    List<LabeledPricePart>? priceParts,
  }) {
    return ShippingOption(
      id: id ?? this.id,
      title: title ?? this.title,
      priceParts: priceParts ?? this.priceParts,
    );
  }

  static const CONSTRUCTOR = 'shippingOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
