import '../tdapi.dart';

class AvailableGift extends TdObject {

  /// Describes a gift that is available for purchase
  const AvailableGift({
    required this.gift,
    required this.resaleCount,
    required this.minResaleStarCount,
    required this.title,
  });
  
  /// [gift] The gift
  final Gift gift;

  /// [resaleCount] Number of gifts that are available for resale
  final int resaleCount;

  /// [minResaleStarCount] The minimum price for the gifts available for resale; 0 if there are no such gifts
  final int minResaleStarCount;

  /// [title] The title of the upgraded gift; empty if the gift isn't available for resale
  final String title;
  
  /// Parse from a json
  factory AvailableGift.fromJson(Map<String, dynamic> json) => AvailableGift(
    gift: Gift.fromJson(json['gift'] ?? {}),
    resaleCount: json['resale_count'] ?? 0,
    minResaleStarCount: json['min_resale_star_count'] ?? 0,
    title: json['title'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
      "resale_count": resaleCount,
      "min_resale_star_count": minResaleStarCount,
      "title": title,
    };
  }
  
  AvailableGift copyWith({
    Gift? gift,
    int? resaleCount,
    int? minResaleStarCount,
    String? title,
  }) => AvailableGift(
    gift: gift ?? this.gift,
    resaleCount: resaleCount ?? this.resaleCount,
    minResaleStarCount: minResaleStarCount ?? this.minResaleStarCount,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'availableGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
