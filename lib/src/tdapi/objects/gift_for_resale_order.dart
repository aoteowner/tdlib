import '../tdapi.dart';

class GiftForResaleOrder extends TdObject {
  /// Describes order in which upgraded gifts for resale will be sorted
  const GiftForResaleOrder();

  factory GiftForResaleOrder.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case GiftForResaleOrderPrice.CONSTRUCTOR:
        return GiftForResaleOrderPrice.fromJson(json);
      case GiftForResaleOrderPriceChangeDate.CONSTRUCTOR:
        return GiftForResaleOrderPriceChangeDate.fromJson(json);
      case GiftForResaleOrderNumber.CONSTRUCTOR:
        return GiftForResaleOrderNumber.fromJson(json);
      default:
        return const GiftForResaleOrder();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  GiftForResaleOrder copyWith() {
    return const GiftForResaleOrder();
  }

  static const CONSTRUCTOR = 'giftForResaleOrder';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiftForResaleOrderPrice extends GiftForResaleOrder {
  /// The gifts will be sorted by their price from the lowest to the highest
  const GiftForResaleOrderPrice();

  factory GiftForResaleOrderPrice.fromJson(Map<String, dynamic> json) =>
      const GiftForResaleOrderPrice();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GiftForResaleOrderPrice copyWith() {
    return const GiftForResaleOrderPrice();
  }

  static const CONSTRUCTOR = 'giftForResaleOrderPrice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiftForResaleOrderPriceChangeDate extends GiftForResaleOrder {
  /// The gifts will be sorted by the last date when their price was changed from the newest to the oldest
  const GiftForResaleOrderPriceChangeDate();

  factory GiftForResaleOrderPriceChangeDate.fromJson(
          Map<String, dynamic> json) =>
      const GiftForResaleOrderPriceChangeDate();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GiftForResaleOrderPriceChangeDate copyWith() {
    return const GiftForResaleOrderPriceChangeDate();
  }

  static const CONSTRUCTOR = 'giftForResaleOrderPriceChangeDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiftForResaleOrderNumber extends GiftForResaleOrder {
  /// The gifts will be sorted by their number from the smallest to the largest
  const GiftForResaleOrderNumber();

  factory GiftForResaleOrderNumber.fromJson(Map<String, dynamic> json) =>
      const GiftForResaleOrderNumber();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GiftForResaleOrderNumber copyWith() {
    return const GiftForResaleOrderNumber();
  }

  static const CONSTRUCTOR = 'giftForResaleOrderNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
