import '../tdapi.dart';

class Gift extends TdObject {
  /// Describes a gift that can be sent to another user or channel chat
  const Gift({
    required this.id,
    required this.sticker,
    required this.starCount,
    required this.defaultSellStarCount,
    required this.upgradeStarCount,
    required this.isForBirthday,
    required this.remainingCount,
    required this.totalCount,
    required this.firstSendDate,
    required this.lastSendDate,
  });

  /// [id] Unique identifier of the gift
  final int id;

  /// [sticker] The sticker representing the gift
  final Sticker sticker;

  /// [starCount] Number of Telegram Stars that must be paid for the gift
  final int starCount;

  /// [defaultSellStarCount] Number of Telegram Stars that can be claimed by the receiver instead of the regular gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed
  final int defaultSellStarCount;

  /// [upgradeStarCount] Number of Telegram Stars that must be paid to upgrade the gift; 0 if upgrade isn't possible
  final int upgradeStarCount;

  /// [isForBirthday] True, if the gift is a birthday gift
  final bool isForBirthday;

  /// [remainingCount] Number of remaining times the gift can be purchased; 0 if not limited or the gift was sold out
  final int remainingCount;

  /// [totalCount] Number of total times the gift can be purchased; 0 if not limited
  final int totalCount;

  /// [firstSendDate] Point in time (Unix timestamp) when the gift was send for the first time; for sold out gifts only
  final int firstSendDate;

  /// [lastSendDate] Point in time (Unix timestamp) when the gift was send for the last time; for sold out gifts only
  final int lastSendDate;

  factory Gift.fromJson(Map<String, dynamic> json) => Gift(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        sticker: Sticker.fromJson(json['sticker'] ?? {}),
        starCount: json['star_count'] ?? 0,
        defaultSellStarCount: json['default_sell_star_count'] ?? 0,
        upgradeStarCount: json['upgrade_star_count'] ?? 0,
        isForBirthday: json['is_for_birthday'] ?? false,
        remainingCount: json['remaining_count'] ?? 0,
        totalCount: json['total_count'] ?? 0,
        firstSendDate: json['first_send_date'] ?? 0,
        lastSendDate: json['last_send_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sticker": sticker.toJson(),
      "star_count": starCount,
      "default_sell_star_count": defaultSellStarCount,
      "upgrade_star_count": upgradeStarCount,
      "is_for_birthday": isForBirthday,
      "remaining_count": remainingCount,
      "total_count": totalCount,
      "first_send_date": firstSendDate,
      "last_send_date": lastSendDate,
    };
  }

  Gift copyWith({
    int? id,
    Sticker? sticker,
    int? starCount,
    int? defaultSellStarCount,
    int? upgradeStarCount,
    bool? isForBirthday,
    int? remainingCount,
    int? totalCount,
    int? firstSendDate,
    int? lastSendDate,
  }) {
    return Gift(
      id: id ?? this.id,
      sticker: sticker ?? this.sticker,
      starCount: starCount ?? this.starCount,
      defaultSellStarCount: defaultSellStarCount ?? this.defaultSellStarCount,
      upgradeStarCount: upgradeStarCount ?? this.upgradeStarCount,
      isForBirthday: isForBirthday ?? this.isForBirthday,
      remainingCount: remainingCount ?? this.remainingCount,
      totalCount: totalCount ?? this.totalCount,
      firstSendDate: firstSendDate ?? this.firstSendDate,
      lastSendDate: lastSendDate ?? this.lastSendDate,
    );
  }

  static const CONSTRUCTOR = 'gift';

  @override
  String getConstructor() => CONSTRUCTOR;
}
