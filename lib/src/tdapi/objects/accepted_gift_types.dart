import '../tdapi.dart';

class AcceptedGiftTypes extends TdObject {
  /// Describes gift types that are accepted by a user
  const AcceptedGiftTypes({
    required this.unlimitedGifts,
    required this.limitedGifts,
    required this.upgradedGifts,
    required this.premiumSubscription,
  });

  /// [unlimitedGifts] True, if unlimited regular gifts are accepted
  final bool unlimitedGifts;

  /// [limitedGifts] True, if limited regular gifts are accepted
  final bool limitedGifts;

  /// [upgradedGifts] True, if upgraded gifts and regular gifts that can be upgraded for free are accepted
  final bool upgradedGifts;

  /// [premiumSubscription] True, if Telegram Premium subscription is accepted
  final bool premiumSubscription;

  factory AcceptedGiftTypes.fromJson(Map<String, dynamic> json) =>
      AcceptedGiftTypes(
        unlimitedGifts: json['unlimited_gifts'] ?? false,
        limitedGifts: json['limited_gifts'] ?? false,
        upgradedGifts: json['upgraded_gifts'] ?? false,
        premiumSubscription: json['premium_subscription'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "unlimited_gifts": unlimitedGifts,
      "limited_gifts": limitedGifts,
      "upgraded_gifts": upgradedGifts,
      "premium_subscription": premiumSubscription,
    };
  }

  AcceptedGiftTypes copyWith({
    bool? unlimitedGifts,
    bool? limitedGifts,
    bool? upgradedGifts,
    bool? premiumSubscription,
  }) {
    return AcceptedGiftTypes(
      unlimitedGifts: unlimitedGifts ?? this.unlimitedGifts,
      limitedGifts: limitedGifts ?? this.limitedGifts,
      upgradedGifts: upgradedGifts ?? this.upgradedGifts,
      premiumSubscription: premiumSubscription ?? this.premiumSubscription,
    );
  }

  static const CONSTRUCTOR = 'acceptedGiftTypes';

  @override
  String getConstructor() => CONSTRUCTOR;
}
