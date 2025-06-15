import '../tdapi.dart';

class ChatBoostSource extends TdObject {
  /// Describes source of a chat boost
  const ChatBoostSource();

  factory ChatBoostSource.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatBoostSourceGiftCode.CONSTRUCTOR:
        return ChatBoostSourceGiftCode.fromJson(json);
      case ChatBoostSourceGiveaway.CONSTRUCTOR:
        return ChatBoostSourceGiveaway.fromJson(json);
      case ChatBoostSourcePremium.CONSTRUCTOR:
        return ChatBoostSourcePremium.fromJson(json);
      default:
        return const ChatBoostSource();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatBoostSource copyWith() {
    return const ChatBoostSource();
  }

  static const CONSTRUCTOR = 'chatBoostSource';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatBoostSourceGiftCode extends ChatBoostSource {
  /// The chat created a Telegram Premium gift code for a user
  const ChatBoostSourceGiftCode({
    required this.userId,
    required this.giftCode,
  });

  /// [userId] Identifier of a user, for which the gift code was created
  final int userId;

  /// [giftCode] The created Telegram Premium gift code, which is known only if this is a gift code for the current user, or it has already been claimed
  final String giftCode;

  factory ChatBoostSourceGiftCode.fromJson(Map<String, dynamic> json) =>
      ChatBoostSourceGiftCode(
        userId: json['user_id'] ?? 0,
        giftCode: json['gift_code'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "gift_code": giftCode,
    };
  }

  @override
  ChatBoostSourceGiftCode copyWith({
    int? userId,
    String? giftCode,
  }) {
    return ChatBoostSourceGiftCode(
      userId: userId ?? this.userId,
      giftCode: giftCode ?? this.giftCode,
    );
  }

  static const CONSTRUCTOR = 'chatBoostSourceGiftCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatBoostSourceGiveaway extends ChatBoostSource {
  /// The chat created a giveaway
  const ChatBoostSourceGiveaway({
    required this.userId,
    required this.giftCode,
    required this.starCount,
    required this.giveawayMessageId,
    required this.isUnclaimed,
  });

  /// [userId] Identifier of a user that won in the giveaway; 0 if none
  final int userId;

  /// [giftCode] The created Telegram Premium gift code if it was used by the user or can be claimed by the current user; an empty string otherwise; for Telegram Premium giveways only
  final String giftCode;

  /// [starCount] Number of Telegram Stars distributed among winners of the giveaway
  final int starCount;

  /// [giveawayMessageId] Identifier of the corresponding giveaway message; can be an identifier of a deleted message
  final int giveawayMessageId;

  /// [isUnclaimed] True, if the winner for the corresponding giveaway prize wasn't chosen, because there were not enough participants
  final bool isUnclaimed;

  factory ChatBoostSourceGiveaway.fromJson(Map<String, dynamic> json) =>
      ChatBoostSourceGiveaway(
        userId: json['user_id'] ?? 0,
        giftCode: json['gift_code'] ?? '',
        starCount: json['star_count'] ?? 0,
        giveawayMessageId: json['giveaway_message_id'] ?? 0,
        isUnclaimed: json['is_unclaimed'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "gift_code": giftCode,
      "star_count": starCount,
      "giveaway_message_id": giveawayMessageId,
      "is_unclaimed": isUnclaimed,
    };
  }

  @override
  ChatBoostSourceGiveaway copyWith({
    int? userId,
    String? giftCode,
    int? starCount,
    int? giveawayMessageId,
    bool? isUnclaimed,
  }) {
    return ChatBoostSourceGiveaway(
      userId: userId ?? this.userId,
      giftCode: giftCode ?? this.giftCode,
      starCount: starCount ?? this.starCount,
      giveawayMessageId: giveawayMessageId ?? this.giveawayMessageId,
      isUnclaimed: isUnclaimed ?? this.isUnclaimed,
    );
  }

  static const CONSTRUCTOR = 'chatBoostSourceGiveaway';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatBoostSourcePremium extends ChatBoostSource {
  /// A user with Telegram Premium subscription or gifted Telegram Premium boosted the chat
  const ChatBoostSourcePremium({
    required this.userId,
  });

  /// [userId] Identifier of the user
  final int userId;

  factory ChatBoostSourcePremium.fromJson(Map<String, dynamic> json) =>
      ChatBoostSourcePremium(
        userId: json['user_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }

  @override
  ChatBoostSourcePremium copyWith({
    int? userId,
  }) {
    return ChatBoostSourcePremium(
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'chatBoostSourcePremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}
