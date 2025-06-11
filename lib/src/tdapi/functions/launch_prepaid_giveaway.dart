import '../tdapi.dart';

class LaunchPrepaidGiveaway extends TdFunction {

  /// Launches a prepaid giveaway
  const LaunchPrepaidGiveaway({
    required this.giveawayId,
    required this.parameters,
    required this.winnerCount,
    required this.starCount,
  });
  
  /// [giveawayId] Unique identifier of the prepaid giveaway
  final int giveawayId;

  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [winnerCount] The number of users to receive giveaway prize
  final int winnerCount;

  /// [starCount] The number of Telegram Stars to be distributed through the giveaway; pass 0 for Telegram Premium giveaways
  final int starCount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "giveaway_id": giveawayId,
      "parameters": parameters.toJson(),
      "winner_count": winnerCount,
      "star_count": starCount,
      "@extra": extra,
    };
  }
  
  LaunchPrepaidGiveaway copyWith({
    int? giveawayId,
    GiveawayParameters? parameters,
    int? winnerCount,
    int? starCount,
  }) => LaunchPrepaidGiveaway(
    giveawayId: giveawayId ?? this.giveawayId,
    parameters: parameters ?? this.parameters,
    winnerCount: winnerCount ?? this.winnerCount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'launchPrepaidGiveaway';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
