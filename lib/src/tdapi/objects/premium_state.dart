import '../tdapi.dart';

class PremiumState extends TdObject {
  /// Contains state of Telegram Premium subscription and promotion videos for Premium features
  const PremiumState({
    required this.state,
    required this.paymentOptions,
    required this.animations,
    required this.businessAnimations,
    this.extra,
    this.clientId,
  });

  /// [state] Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription
  final FormattedText state;

  /// [paymentOptions] The list of available options for buying Telegram Premium
  final List<PremiumStatePaymentOption> paymentOptions;

  /// [animations] The list of available promotion animations for Premium features
  final List<PremiumFeaturePromotionAnimation> animations;

  /// [businessAnimations] The list of available promotion animations for Business features
  final List<BusinessFeaturePromotionAnimation> businessAnimations;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory PremiumState.fromJson(Map<String, dynamic> json) => PremiumState(
        state: FormattedText.fromJson(json['state'] ?? {}),
        paymentOptions: json['payment_options'] == null
            ? <PremiumStatePaymentOption>[]
            : (json['payment_options'] as List)
                .map((e) => PremiumStatePaymentOption.fromJson(e ?? {}))
                .toList(),
        animations: json['animations'] == null
            ? <PremiumFeaturePromotionAnimation>[]
            : (json['animations'] as List)
                .map((e) => PremiumFeaturePromotionAnimation.fromJson(e ?? {}))
                .toList(),
        businessAnimations: json['business_animations'] == null
            ? <BusinessFeaturePromotionAnimation>[]
            : (json['business_animations'] as List)
                .map((e) => BusinessFeaturePromotionAnimation.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "state": state.toJson(),
      "payment_options": paymentOptions.map((e) => e.toJson()).toList(),
      "animations": animations.map((e) => e.toJson()).toList(),
      "business_animations": businessAnimations.map((e) => e.toJson()).toList(),
    };
  }

  PremiumState copyWith({
    FormattedText? state,
    List<PremiumStatePaymentOption>? paymentOptions,
    List<PremiumFeaturePromotionAnimation>? animations,
    List<BusinessFeaturePromotionAnimation>? businessAnimations,
    dynamic extra,
    int? clientId,
  }) {
    return PremiumState(
      state: state ?? this.state,
      paymentOptions: paymentOptions ?? this.paymentOptions,
      animations: animations ?? this.animations,
      businessAnimations: businessAnimations ?? this.businessAnimations,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'premiumState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
