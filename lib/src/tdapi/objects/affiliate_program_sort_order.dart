import '../tdapi.dart';

class AffiliateProgramSortOrder extends TdObject {
  /// Describes the order of the found affiliate programs
  const AffiliateProgramSortOrder();

  factory AffiliateProgramSortOrder.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AffiliateProgramSortOrderProfitability.CONSTRUCTOR:
        return AffiliateProgramSortOrderProfitability.fromJson(json);
      case AffiliateProgramSortOrderCreationDate.CONSTRUCTOR:
        return AffiliateProgramSortOrderCreationDate.fromJson(json);
      case AffiliateProgramSortOrderRevenue.CONSTRUCTOR:
        return AffiliateProgramSortOrderRevenue.fromJson(json);
      default:
        return const AffiliateProgramSortOrder();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  AffiliateProgramSortOrder copyWith() {
    return const AffiliateProgramSortOrder();
  }

  static const CONSTRUCTOR = 'affiliateProgramSortOrder';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AffiliateProgramSortOrderProfitability extends AffiliateProgramSortOrder {
  /// The affiliate programs must be sorted by the profitability
  const AffiliateProgramSortOrderProfitability();

  factory AffiliateProgramSortOrderProfitability.fromJson(
          Map<String, dynamic> json) =>
      const AffiliateProgramSortOrderProfitability();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AffiliateProgramSortOrderProfitability copyWith() {
    return const AffiliateProgramSortOrderProfitability();
  }

  static const CONSTRUCTOR = 'affiliateProgramSortOrderProfitability';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AffiliateProgramSortOrderCreationDate extends AffiliateProgramSortOrder {
  /// The affiliate programs must be sorted by creation date
  const AffiliateProgramSortOrderCreationDate();

  factory AffiliateProgramSortOrderCreationDate.fromJson(
          Map<String, dynamic> json) =>
      const AffiliateProgramSortOrderCreationDate();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AffiliateProgramSortOrderCreationDate copyWith() {
    return const AffiliateProgramSortOrderCreationDate();
  }

  static const CONSTRUCTOR = 'affiliateProgramSortOrderCreationDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AffiliateProgramSortOrderRevenue extends AffiliateProgramSortOrder {
  /// The affiliate programs must be sorted by the expected revenue
  const AffiliateProgramSortOrderRevenue();

  factory AffiliateProgramSortOrderRevenue.fromJson(
          Map<String, dynamic> json) =>
      const AffiliateProgramSortOrderRevenue();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AffiliateProgramSortOrderRevenue copyWith() {
    return const AffiliateProgramSortOrderRevenue();
  }

  static const CONSTRUCTOR = 'affiliateProgramSortOrderRevenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}
