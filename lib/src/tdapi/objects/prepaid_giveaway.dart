import '../tdapi.dart';

class PrepaidGiveaway extends TdObject {

  /// Describes a prepaid giveaway
  const PrepaidGiveaway({
    required this.id,
    required this.winnerCount,
    required this.prize,
    required this.boostCount,
    required this.paymentDate,
  });
  
  /// [id] Unique identifier of the prepaid giveaway
  final int id;

  /// [winnerCount] Number of users which will receive giveaway prize
  final int winnerCount;

  /// [prize] Prize of the giveaway
  final GiveawayPrize prize;

  /// [boostCount] The number of boosts received by the chat from the giveaway; for Telegram Star giveaways only
  final int boostCount;

  /// [paymentDate] Point in time (Unix timestamp) when the giveaway was paid
  final int paymentDate;
  
  /// Parse from a json
  factory PrepaidGiveaway.fromJson(Map<String, dynamic> json) => PrepaidGiveaway(
    id: int.tryParse(json['id'] ?? '') ?? 0,
    winnerCount: json['winner_count'] ?? 0,
    prize: GiveawayPrize.fromJson(json['prize'] ?? {}),
    boostCount: json['boost_count'] ?? 0,
    paymentDate: json['payment_date'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "winner_count": winnerCount,
      "prize": prize.toJson(),
      "boost_count": boostCount,
      "payment_date": paymentDate,
    };
  }
  
  PrepaidGiveaway copyWith({
    int? id,
    int? winnerCount,
    GiveawayPrize? prize,
    int? boostCount,
    int? paymentDate,
  }) => PrepaidGiveaway(
    id: id ?? this.id,
    winnerCount: winnerCount ?? this.winnerCount,
    prize: prize ?? this.prize,
    boostCount: boostCount ?? this.boostCount,
    paymentDate: paymentDate ?? this.paymentDate,
  );

  static const CONSTRUCTOR = 'prepaidGiveaway';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
