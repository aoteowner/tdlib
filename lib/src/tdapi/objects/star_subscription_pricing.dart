import '../tdapi.dart';

class StarSubscriptionPricing extends TdObject {

  /// Describes subscription plan paid in Telegram Stars
  const StarSubscriptionPricing({
    required this.period,
    required this.starCount,
  });
  
  /// [period] The number of seconds between consecutive Telegram Star debiting
  final int period;

  /// [starCount] The amount of Telegram Stars that must be paid for each period
  final int starCount;
  
  /// Parse from a json
  factory StarSubscriptionPricing.fromJson(Map<String, dynamic> json) => StarSubscriptionPricing(
    period: json['period'] ?? 0,
    starCount: json['star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "period": period,
      "star_count": starCount,
    };
  }
  
  StarSubscriptionPricing copyWith({
    int? period,
    int? starCount,
  }) => StarSubscriptionPricing(
    period: period ?? this.period,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'starSubscriptionPricing';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
