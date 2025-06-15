import '../tdapi.dart';

class BusinessFeaturePromotionAnimation extends TdObject {
  /// Describes a promotion animation for a Business feature
  const BusinessFeaturePromotionAnimation({
    required this.feature,
    required this.animation,
  });

  /// [feature] Business feature
  final BusinessFeature feature;

  /// [animation] Promotion animation for the feature
  final Animation animation;

  factory BusinessFeaturePromotionAnimation.fromJson(
          Map<String, dynamic> json) =>
      BusinessFeaturePromotionAnimation(
        feature: BusinessFeature.fromJson(json['feature'] ?? {}),
        animation: Animation.fromJson(json['animation'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "feature": feature.toJson(),
      "animation": animation.toJson(),
    };
  }

  BusinessFeaturePromotionAnimation copyWith({
    BusinessFeature? feature,
    Animation? animation,
  }) {
    return BusinessFeaturePromotionAnimation(
      feature: feature ?? this.feature,
      animation: animation ?? this.animation,
    );
  }

  static const CONSTRUCTOR = 'businessFeaturePromotionAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
