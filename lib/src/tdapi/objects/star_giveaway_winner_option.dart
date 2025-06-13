import '../tdapi.dart';

class StarGiveawayWinnerOption extends TdObject {

  /// Describes an option for the number of winners of a Telegram Star giveaway
  const StarGiveawayWinnerOption({
    required this.winnerCount,
    required this.wonStarCount,
    required this.isDefault,
  });
  
  /// [winnerCount] The number of users that will be chosen as winners
  final int winnerCount;

  /// [wonStarCount] The number of Telegram Stars that will be won by the winners of the giveaway
  final int wonStarCount;

  /// [isDefault] True, if the option must be chosen by default
  final bool isDefault;
  
  /// Parse from a json
  factory StarGiveawayWinnerOption.fromJson(Map<String, dynamic> json) => StarGiveawayWinnerOption(
    winnerCount: json['winner_count'] ?? 0,
    wonStarCount: json['won_star_count'] ?? 0,
    isDefault: json['is_default'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "winner_count": winnerCount,
      "won_star_count": wonStarCount,
      "is_default": isDefault,
    };
  }
  
  StarGiveawayWinnerOption copyWith({
    int? winnerCount,
    int? wonStarCount,
    bool? isDefault,
  }) => StarGiveawayWinnerOption(
    winnerCount: winnerCount ?? this.winnerCount,
    wonStarCount: wonStarCount ?? this.wonStarCount,
    isDefault: isDefault ?? this.isDefault,
  );

  static const CONSTRUCTOR = 'starGiveawayWinnerOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
