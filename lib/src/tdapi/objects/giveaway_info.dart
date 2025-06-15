import '../tdapi.dart';

class GiveawayInfo extends TdObject {
  /// Contains information about a giveaway
  const GiveawayInfo();

  factory GiveawayInfo.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case GiveawayInfoOngoing.CONSTRUCTOR:
        return GiveawayInfoOngoing.fromJson(json);
      case GiveawayInfoCompleted.CONSTRUCTOR:
        return GiveawayInfoCompleted.fromJson(json);
      default:
        return const GiveawayInfo();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  GiveawayInfo copyWith() {
    return const GiveawayInfo();
  }

  static const CONSTRUCTOR = 'giveawayInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiveawayInfoOngoing extends GiveawayInfo {
  /// Describes an ongoing giveaway
  const GiveawayInfoOngoing({
    required this.creationDate,
    required this.status,
    required this.isEnded,
    this.extra,
    this.clientId,
  });

  /// [creationDate] Point in time (Unix timestamp) when the giveaway was created
  final int creationDate;

  /// [status] Status of the current user in the giveaway
  final GiveawayParticipantStatus status;

  /// [isEnded] True, if the giveaway has ended and results are being prepared
  final bool isEnded;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory GiveawayInfoOngoing.fromJson(Map<String, dynamic> json) =>
      GiveawayInfoOngoing(
        creationDate: json['creation_date'] ?? 0,
        status: GiveawayParticipantStatus.fromJson(json['status'] ?? {}),
        isEnded: json['is_ended'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "creation_date": creationDate,
      "status": status.toJson(),
      "is_ended": isEnded,
    };
  }

  @override
  GiveawayInfoOngoing copyWith({
    int? creationDate,
    GiveawayParticipantStatus? status,
    bool? isEnded,
    dynamic extra,
    int? clientId,
  }) {
    return GiveawayInfoOngoing(
      creationDate: creationDate ?? this.creationDate,
      status: status ?? this.status,
      isEnded: isEnded ?? this.isEnded,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'giveawayInfoOngoing';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiveawayInfoCompleted extends GiveawayInfo {
  /// Describes a completed giveaway
  const GiveawayInfoCompleted({
    required this.creationDate,
    required this.actualWinnersSelectionDate,
    required this.wasRefunded,
    required this.isWinner,
    required this.winnerCount,
    required this.activationCount,
    required this.giftCode,
    required this.wonStarCount,
    this.extra,
    this.clientId,
  });

  /// [creationDate] Point in time (Unix timestamp) when the giveaway was created
  final int creationDate;

  /// [actualWinnersSelectionDate] Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// [wasRefunded] True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// [isWinner] True, if the current user is a winner of the giveaway
  final bool isWinner;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [activationCount] Number of winners, which activated their gift codes; for Telegram Premium giveaways only
  final int activationCount;

  /// [giftCode] Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway or the giveaway isn't a Telegram Premium giveaway
  final String giftCode;

  /// [wonStarCount] The amount of Telegram Stars won by the current user; 0 if the user isn't a winner in the giveaway or the giveaway isn't a Telegram Star giveaway
  final int wonStarCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory GiveawayInfoCompleted.fromJson(Map<String, dynamic> json) =>
      GiveawayInfoCompleted(
        creationDate: json['creation_date'] ?? 0,
        actualWinnersSelectionDate: json['actual_winners_selection_date'] ?? 0,
        wasRefunded: json['was_refunded'] ?? false,
        isWinner: json['is_winner'] ?? false,
        winnerCount: json['winner_count'] ?? 0,
        activationCount: json['activation_count'] ?? 0,
        giftCode: json['gift_code'] ?? '',
        wonStarCount: json['won_star_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "creation_date": creationDate,
      "actual_winners_selection_date": actualWinnersSelectionDate,
      "was_refunded": wasRefunded,
      "is_winner": isWinner,
      "winner_count": winnerCount,
      "activation_count": activationCount,
      "gift_code": giftCode,
      "won_star_count": wonStarCount,
    };
  }

  @override
  GiveawayInfoCompleted copyWith({
    int? creationDate,
    int? actualWinnersSelectionDate,
    bool? wasRefunded,
    bool? isWinner,
    int? winnerCount,
    int? activationCount,
    String? giftCode,
    int? wonStarCount,
    dynamic extra,
    int? clientId,
  }) {
    return GiveawayInfoCompleted(
      creationDate: creationDate ?? this.creationDate,
      actualWinnersSelectionDate:
          actualWinnersSelectionDate ?? this.actualWinnersSelectionDate,
      wasRefunded: wasRefunded ?? this.wasRefunded,
      isWinner: isWinner ?? this.isWinner,
      winnerCount: winnerCount ?? this.winnerCount,
      activationCount: activationCount ?? this.activationCount,
      giftCode: giftCode ?? this.giftCode,
      wonStarCount: wonStarCount ?? this.wonStarCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'giveawayInfoCompleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}
