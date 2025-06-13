import '../tdapi.dart';

class TelegramPaymentPurpose extends TdObject {

  /// Describes a purpose of a payment toward Telegram
  const TelegramPaymentPurpose();
  
  /// a TelegramPaymentPurpose return type can be :
  /// * [TelegramPaymentPurposePremiumGift]
  /// * [TelegramPaymentPurposePremiumGiftCodes]
  /// * [TelegramPaymentPurposePremiumGiveaway]
  /// * [TelegramPaymentPurposeStars]
  /// * [TelegramPaymentPurposeGiftedStars]
  /// * [TelegramPaymentPurposeStarGiveaway]
  /// * [TelegramPaymentPurposeJoinChat]
  factory TelegramPaymentPurpose.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TelegramPaymentPurposePremiumGift.CONSTRUCTOR:
        return TelegramPaymentPurposePremiumGift.fromJson(json);
      case TelegramPaymentPurposePremiumGiftCodes.CONSTRUCTOR:
        return TelegramPaymentPurposePremiumGiftCodes.fromJson(json);
      case TelegramPaymentPurposePremiumGiveaway.CONSTRUCTOR:
        return TelegramPaymentPurposePremiumGiveaway.fromJson(json);
      case TelegramPaymentPurposeStars.CONSTRUCTOR:
        return TelegramPaymentPurposeStars.fromJson(json);
      case TelegramPaymentPurposeGiftedStars.CONSTRUCTOR:
        return TelegramPaymentPurposeGiftedStars.fromJson(json);
      case TelegramPaymentPurposeStarGiveaway.CONSTRUCTOR:
        return TelegramPaymentPurposeStarGiveaway.fromJson(json);
      case TelegramPaymentPurposeJoinChat.CONSTRUCTOR:
        return TelegramPaymentPurposeJoinChat.fromJson(json);
      default:
        return const TelegramPaymentPurpose();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  TelegramPaymentPurpose copyWith() => const TelegramPaymentPurpose();

  static const CONSTRUCTOR = 'telegramPaymentPurpose';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TelegramPaymentPurposePremiumGift extends TelegramPaymentPurpose {

  /// The user gifting Telegram Premium to another user
  const TelegramPaymentPurposePremiumGift({
    required this.currency,
    required this.amount,
    required this.userId,
    required this.monthCount,
    required this.text,
  });
  
  /// [currency] ISO 4217 currency code of the payment currency, or "XTR" for payments in Telegram Stars
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userId] Identifier of the user which will receive Telegram Premium
  final int userId;

  /// [monthCount] Number of months the Telegram Premium subscription will be active for the user
  final int monthCount;

  /// [text] Text to show to the user receiving Telegram Premium; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;
  
  /// Parse from a json
  factory TelegramPaymentPurposePremiumGift.fromJson(Map<String, dynamic> json) => TelegramPaymentPurposePremiumGift(
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    userId: json['user_id'] ?? 0,
    monthCount: json['month_count'] ?? 0,
    text: FormattedText.fromJson(json['text'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "user_id": userId,
      "month_count": monthCount,
      "text": text.toJson(),
    };
  }
  
  @override
  TelegramPaymentPurposePremiumGift copyWith({
    String? currency,
    int? amount,
    int? userId,
    int? monthCount,
    FormattedText? text,
  }) => TelegramPaymentPurposePremiumGift(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    userId: userId ?? this.userId,
    monthCount: monthCount ?? this.monthCount,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'telegramPaymentPurposePremiumGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TelegramPaymentPurposePremiumGiftCodes extends TelegramPaymentPurpose {

  /// The user boosting a chat by creating Telegram Premium gift codes for other users
  const TelegramPaymentPurposePremiumGiftCodes({
    required this.boostedChatId,
    required this.currency,
    required this.amount,
    required this.userIds,
    required this.monthCount,
    required this.text,
  });
  
  /// [boostedChatId] Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user
  final int boostedChatId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userIds] Identifiers of the users which can activate the gift codes
  final List<int> userIds;

  /// [monthCount] Number of months the Telegram Premium subscription will be active for the users
  final int monthCount;

  /// [text] Text to show along with the gift codes; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;
  
  /// Parse from a json
  factory TelegramPaymentPurposePremiumGiftCodes.fromJson(Map<String, dynamic> json) => TelegramPaymentPurposePremiumGiftCodes(
    boostedChatId: json['boosted_chat_id'] ?? 0,
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    userIds: json['user_ids'] == null ? <int>[] :(json['user_ids'] as List).map((e) => (e  ?? 0) as int).toList(),
    monthCount: json['month_count'] ?? 0,
    text: FormattedText.fromJson(json['text'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "boosted_chat_id": boostedChatId,
      "currency": currency,
      "amount": amount,
      "user_ids": userIds,
      "month_count": monthCount,
      "text": text.toJson(),
    };
  }
  
  @override
  TelegramPaymentPurposePremiumGiftCodes copyWith({
    int? boostedChatId,
    String? currency,
    int? amount,
    List<int>? userIds,
    int? monthCount,
    FormattedText? text,
  }) => TelegramPaymentPurposePremiumGiftCodes(
    boostedChatId: boostedChatId ?? this.boostedChatId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    userIds: userIds ?? this.userIds,
    monthCount: monthCount ?? this.monthCount,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'telegramPaymentPurposePremiumGiftCodes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TelegramPaymentPurposePremiumGiveaway extends TelegramPaymentPurpose {

  /// The user creating a Telegram Premium giveaway
  const TelegramPaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.monthCount,
  });
  
  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [winnerCount] Number of users which will be able to activate the gift codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be active for the users
  final int monthCount;
  
  /// Parse from a json
  factory TelegramPaymentPurposePremiumGiveaway.fromJson(Map<String, dynamic> json) => TelegramPaymentPurposePremiumGiveaway(
    parameters: GiveawayParameters.fromJson(json['parameters'] ?? {}),
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    winnerCount: json['winner_count'] ?? 0,
    monthCount: json['month_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "parameters": parameters.toJson(),
      "currency": currency,
      "amount": amount,
      "winner_count": winnerCount,
      "month_count": monthCount,
    };
  }
  
  @override
  TelegramPaymentPurposePremiumGiveaway copyWith({
    GiveawayParameters? parameters,
    String? currency,
    int? amount,
    int? winnerCount,
    int? monthCount,
  }) => TelegramPaymentPurposePremiumGiveaway(
    parameters: parameters ?? this.parameters,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    winnerCount: winnerCount ?? this.winnerCount,
    monthCount: monthCount ?? this.monthCount,
  );

  static const CONSTRUCTOR = 'telegramPaymentPurposePremiumGiveaway';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TelegramPaymentPurposeStars extends TelegramPaymentPurpose {

  /// The user buying Telegram Stars
  const TelegramPaymentPurposeStars({
    required this.currency,
    required this.amount,
    required this.starCount,
  });
  
  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of bought Telegram Stars
  final int starCount;
  
  /// Parse from a json
  factory TelegramPaymentPurposeStars.fromJson(Map<String, dynamic> json) => TelegramPaymentPurposeStars(
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    starCount: json['star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "star_count": starCount,
    };
  }
  
  @override
  TelegramPaymentPurposeStars copyWith({
    String? currency,
    int? amount,
    int? starCount,
  }) => TelegramPaymentPurposeStars(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'telegramPaymentPurposeStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TelegramPaymentPurposeGiftedStars extends TelegramPaymentPurpose {

  /// The user buying Telegram Stars for other users
  const TelegramPaymentPurposeGiftedStars({
    required this.userId,
    required this.currency,
    required this.amount,
    required this.starCount,
  });
  
  /// [userId] Identifier of the user to which Telegram Stars are gifted
  final int userId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of bought Telegram Stars
  final int starCount;
  
  /// Parse from a json
  factory TelegramPaymentPurposeGiftedStars.fromJson(Map<String, dynamic> json) => TelegramPaymentPurposeGiftedStars(
    userId: json['user_id'] ?? 0,
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    starCount: json['star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "currency": currency,
      "amount": amount,
      "star_count": starCount,
    };
  }
  
  @override
  TelegramPaymentPurposeGiftedStars copyWith({
    int? userId,
    String? currency,
    int? amount,
    int? starCount,
  }) => TelegramPaymentPurposeGiftedStars(
    userId: userId ?? this.userId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'telegramPaymentPurposeGiftedStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TelegramPaymentPurposeStarGiveaway extends TelegramPaymentPurpose {

  /// The user creating a Telegram Star giveaway
  const TelegramPaymentPurposeStarGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.starCount,
  });
  
  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [winnerCount] The number of users to receive Telegram Stars
  final int winnerCount;

  /// [starCount] The number of Telegram Stars to be distributed through the giveaway
  final int starCount;
  
  /// Parse from a json
  factory TelegramPaymentPurposeStarGiveaway.fromJson(Map<String, dynamic> json) => TelegramPaymentPurposeStarGiveaway(
    parameters: GiveawayParameters.fromJson(json['parameters'] ?? {}),
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    winnerCount: json['winner_count'] ?? 0,
    starCount: json['star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "parameters": parameters.toJson(),
      "currency": currency,
      "amount": amount,
      "winner_count": winnerCount,
      "star_count": starCount,
    };
  }
  
  @override
  TelegramPaymentPurposeStarGiveaway copyWith({
    GiveawayParameters? parameters,
    String? currency,
    int? amount,
    int? winnerCount,
    int? starCount,
  }) => TelegramPaymentPurposeStarGiveaway(
    parameters: parameters ?? this.parameters,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    winnerCount: winnerCount ?? this.winnerCount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'telegramPaymentPurposeStarGiveaway';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TelegramPaymentPurposeJoinChat extends TelegramPaymentPurpose {

  /// The user joins a chat and subscribes to regular payments in Telegram Stars
  const TelegramPaymentPurposeJoinChat({
    required this.inviteLink,
  });
  
  /// [inviteLink] Invite link to use
  final String inviteLink;
  
  /// Parse from a json
  factory TelegramPaymentPurposeJoinChat.fromJson(Map<String, dynamic> json) => TelegramPaymentPurposeJoinChat(
    inviteLink: json['invite_link'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
    };
  }
  
  @override
  TelegramPaymentPurposeJoinChat copyWith({
    String? inviteLink,
  }) => TelegramPaymentPurposeJoinChat(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const CONSTRUCTOR = 'telegramPaymentPurposeJoinChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
