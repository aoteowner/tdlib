import '../tdapi.dart';

class StarGiveawayPaymentOption extends TdObject {

  /// Describes an option for creating of Telegram Star giveaway. Use telegramPaymentPurposeStarGiveaway for out-of-store payments
  const StarGiveawayPaymentOption({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.storeProductId,
    required this.yearlyBoostCount,
    required this.winnerOptions,
    required this.isDefault,
    required this.isAdditional,
  });
  
  /// [currency] ISO 4217 currency code for the payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of Telegram Stars that will be distributed among winners
  final int starCount;

  /// [storeProductId] Identifier of the store product associated with the option; may be empty if none
  final String storeProductId;

  /// [yearlyBoostCount] Number of times the chat will be boosted for one year if the option is chosen
  final int yearlyBoostCount;

  /// [winnerOptions] Allowed options for the number of giveaway winners
  final List<StarGiveawayWinnerOption> winnerOptions;

  /// [isDefault] True, if the option must be chosen by default
  final bool isDefault;

  /// [isAdditional] True, if the option must be shown only in the full list of payment options
  final bool isAdditional;
  
  /// Parse from a json
  factory StarGiveawayPaymentOption.fromJson(Map<String, dynamic> json) => StarGiveawayPaymentOption(
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    starCount: json['star_count'] ?? 0,
    storeProductId: json['store_product_id'] ?? '',
    yearlyBoostCount: json['yearly_boost_count'] ?? 0,
    winnerOptions: json['winner_options'] == null ? [] :(json['winner_options'] as List).map((e) => StarGiveawayWinnerOption.fromJson(e ?? {})).toList(),
    isDefault: json['is_default'] ?? false,
    isAdditional: json['is_additional'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "star_count": starCount,
      "store_product_id": storeProductId,
      "yearly_boost_count": yearlyBoostCount,
      "winner_options": winnerOptions.map((e) => e.toJson()).toList(),
      "is_default": isDefault,
      "is_additional": isAdditional,
    };
  }
  
  StarGiveawayPaymentOption copyWith({
    String? currency,
    int? amount,
    int? starCount,
    String? storeProductId,
    int? yearlyBoostCount,
    List<StarGiveawayWinnerOption>? winnerOptions,
    bool? isDefault,
    bool? isAdditional,
  }) => StarGiveawayPaymentOption(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    starCount: starCount ?? this.starCount,
    storeProductId: storeProductId ?? this.storeProductId,
    yearlyBoostCount: yearlyBoostCount ?? this.yearlyBoostCount,
    winnerOptions: winnerOptions ?? this.winnerOptions,
    isDefault: isDefault ?? this.isDefault,
    isAdditional: isAdditional ?? this.isAdditional,
  );

  static const CONSTRUCTOR = 'starGiveawayPaymentOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
