import '../tdapi.dart';

class PremiumFeatures extends TdObject {
  /// Contains information about features, available to Premium users
  const PremiumFeatures({
    required this.features,
    required this.limits,
    this.paymentLink,
    this.extra,
    this.clientId,
  });

  /// [features] The list of available features
  final List<PremiumFeature> features;

  /// [limits] The list of limits, increased for Premium users
  final List<PremiumLimit> limits;

  /// [paymentLink] An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available
  final InternalLinkType? paymentLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory PremiumFeatures.fromJson(Map<String, dynamic> json) =>
      PremiumFeatures(
        features: json['features'] == null
            ? <PremiumFeature>[]
            : (json['features'] as List)
                .map((e) => PremiumFeature.fromJson(e ?? {}))
                .toList(),
        limits: json['limits'] == null
            ? <PremiumLimit>[]
            : (json['limits'] as List)
                .map((e) => PremiumLimit.fromJson(e ?? {}))
                .toList(),
        paymentLink: InternalLinkType.fromJson(json['payment_link'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "features": features.map((e) => e.toJson()).toList(),
      "limits": limits.map((e) => e.toJson()).toList(),
      "payment_link": paymentLink?.toJson(),
    };
  }

  PremiumFeatures copyWith({
    List<PremiumFeature>? features,
    List<PremiumLimit>? limits,
    InternalLinkType? paymentLink,
    dynamic extra,
    int? clientId,
  }) {
    return PremiumFeatures(
      features: features ?? this.features,
      limits: limits ?? this.limits,
      paymentLink: paymentLink ?? this.paymentLink,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'premiumFeatures';

  @override
  String getConstructor() => CONSTRUCTOR;
}
