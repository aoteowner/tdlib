import '../tdapi.dart';

class GiveawayPrize extends TdObject {

  /// Contains information about a giveaway prize
  const GiveawayPrize();
  
  /// a GiveawayPrize return type can be :
  /// * [GiveawayPrizePremium]
  /// * [GiveawayPrizeStars]
  factory GiveawayPrize.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case GiveawayPrizePremium.CONSTRUCTOR:
        return GiveawayPrizePremium.fromJson(json);
      case GiveawayPrizeStars.CONSTRUCTOR:
        return GiveawayPrizeStars.fromJson(json);
      default:
        return const GiveawayPrize();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  GiveawayPrize copyWith() => const GiveawayPrize();

  static const CONSTRUCTOR = 'giveawayPrize';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GiveawayPrizePremium extends GiveawayPrize {

  /// The giveaway sends Telegram Premium subscriptions to the winners
  const GiveawayPrizePremium({
    required this.monthCount,
  });
  
  /// [monthCount] Number of months the Telegram Premium subscription will be active after code activation
  final int monthCount;
  
  /// Parse from a json
  factory GiveawayPrizePremium.fromJson(Map<String, dynamic> json) => GiveawayPrizePremium(
    monthCount: json['month_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "month_count": monthCount,
    };
  }
  
  @override
  GiveawayPrizePremium copyWith({
    int? monthCount,
  }) => GiveawayPrizePremium(
    monthCount: monthCount ?? this.monthCount,
  );

  static const CONSTRUCTOR = 'giveawayPrizePremium';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GiveawayPrizeStars extends GiveawayPrize {

  /// The giveaway sends Telegram Stars to the winners
  const GiveawayPrizeStars({
    required this.starCount,
  });
  
  /// [starCount] Number of Telegram Stars that will be shared by all winners
  final int starCount;
  
  /// Parse from a json
  factory GiveawayPrizeStars.fromJson(Map<String, dynamic> json) => GiveawayPrizeStars(
    starCount: json['star_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
    };
  }
  
  @override
  GiveawayPrizeStars copyWith({
    int? starCount,
  }) => GiveawayPrizeStars(
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'giveawayPrizeStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
