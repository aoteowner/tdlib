import '../tdapi.dart';

class PremiumGiftCodeInfo extends TdObject {
  /// Contains information about a Telegram Premium gift code
  const PremiumGiftCodeInfo({
    this.creatorId,
    required this.creationDate,
    required this.isFromGiveaway,
    required this.giveawayMessageId,
    required this.monthCount,
    required this.userId,
    required this.useDate,
    this.extra,
    this.clientId,
  });

  /// [creatorId] Identifier of a chat or a user that created the gift code; may be null if unknown. If null and the code is from messagePremiumGiftCode message, then creator_id from the message can be used
  final MessageSender? creatorId;

  /// [creationDate] Point in time (Unix timestamp) when the code was created
  final int creationDate;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [giveawayMessageId] Identifier of the corresponding giveaway message in the creator_id chat; can be 0 or an identifier of a deleted message
  final int giveawayMessageId;

  /// [monthCount] Number of months the Telegram Premium subscription will be active after code activation
  final int monthCount;

  /// [userId] Identifier of a user for which the code was created; 0 if none
  final int userId;

  /// [useDate] Point in time (Unix timestamp) when the code was activated; 0 if none
  final int useDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory PremiumGiftCodeInfo.fromJson(Map<String, dynamic> json) =>
      PremiumGiftCodeInfo(
        creatorId: MessageSender.fromJson(json['creator_id'] ?? {}),
        creationDate: json['creation_date'] ?? 0,
        isFromGiveaway: json['is_from_giveaway'] ?? false,
        giveawayMessageId: json['giveaway_message_id'] ?? 0,
        monthCount: json['month_count'] ?? 0,
        userId: json['user_id'] ?? 0,
        useDate: json['use_date'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "creator_id": creatorId?.toJson(),
      "creation_date": creationDate,
      "is_from_giveaway": isFromGiveaway,
      "giveaway_message_id": giveawayMessageId,
      "month_count": monthCount,
      "user_id": userId,
      "use_date": useDate,
    };
  }

  PremiumGiftCodeInfo copyWith({
    MessageSender? creatorId,
    int? creationDate,
    bool? isFromGiveaway,
    int? giveawayMessageId,
    int? monthCount,
    int? userId,
    int? useDate,
    dynamic extra,
    int? clientId,
  }) {
    return PremiumGiftCodeInfo(
      creatorId: creatorId ?? this.creatorId,
      creationDate: creationDate ?? this.creationDate,
      isFromGiveaway: isFromGiveaway ?? this.isFromGiveaway,
      giveawayMessageId: giveawayMessageId ?? this.giveawayMessageId,
      monthCount: monthCount ?? this.monthCount,
      userId: userId ?? this.userId,
      useDate: useDate ?? this.useDate,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'premiumGiftCodeInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
