import '../tdapi.dart';

class StorePaymentPurpose extends TdObject {

  /// Describes a purpose of an in-store payment
  const StorePaymentPurpose();
  
  /// a StorePaymentPurpose return type can be :
  /// * [StorePaymentPurposePremiumSubscription]
  /// * [StorePaymentPurposePremiumGift]
  /// * [StorePaymentPurposePremiumGiftCodes]
  /// * [StorePaymentPurposePremiumGiveaway]
  /// * [StorePaymentPurposeStarGiveaway]
  /// * [StorePaymentPurposeStars]
  /// * [StorePaymentPurposeGiftedStars]
  factory StorePaymentPurpose.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StorePaymentPurposePremiumSubscription.CONSTRUCTOR:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
      case StorePaymentPurposePremiumGift.CONSTRUCTOR:
        return StorePaymentPurposePremiumGift.fromJson(json);
      case StorePaymentPurposePremiumGiftCodes.CONSTRUCTOR:
        return StorePaymentPurposePremiumGiftCodes.fromJson(json);
      case StorePaymentPurposePremiumGiveaway.CONSTRUCTOR:
        return StorePaymentPurposePremiumGiveaway.fromJson(json);
      case StorePaymentPurposeStarGiveaway.CONSTRUCTOR:
        return StorePaymentPurposeStarGiveaway.fromJson(json);
      case StorePaymentPurposeStars.CONSTRUCTOR:
        return StorePaymentPurposeStars.fromJson(json);
      case StorePaymentPurposeGiftedStars.CONSTRUCTOR:
        return StorePaymentPurposeGiftedStars.fromJson(json);
      default:
        return const StorePaymentPurpose();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StorePaymentPurpose copyWith() => const StorePaymentPurpose();

  static const CONSTRUCTOR = 'storePaymentPurpose';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {

  /// The user subscribing to Telegram Premium
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
    required this.isUpgrade,
  });
  
  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase; only for App Store 
  final bool isRestore;

  /// [isUpgrade] Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store
  final bool isUpgrade;
  
  /// Parse from a json
  factory StorePaymentPurposePremiumSubscription.fromJson(Map<String, dynamic> json) => StorePaymentPurposePremiumSubscription(
    isRestore: json['is_restore'],
    isUpgrade: json['is_upgrade'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_restore": isRestore,
      "is_upgrade": isUpgrade,
    };
  }
  
  @override
  StorePaymentPurposePremiumSubscription copyWith({
    bool? isRestore,
    bool? isUpgrade,
  }) => StorePaymentPurposePremiumSubscription(
    isRestore: isRestore ?? this.isRestore,
    isUpgrade: isUpgrade ?? this.isUpgrade,
  );

  static const CONSTRUCTOR = 'storePaymentPurposePremiumSubscription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposePremiumGift extends StorePaymentPurpose {

  /// The user gifting Telegram Premium to another user
  const StorePaymentPurposePremiumGift({
    required this.currency,
    required this.amount,
    required this.userId,
    required this.text,
  });
  
  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userId] Identifiers of the user which will receive Telegram Premium
  final int userId;

  /// [text] Text to show along with the gift codes; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;
  
  /// Parse from a json
  factory StorePaymentPurposePremiumGift.fromJson(Map<String, dynamic> json) => StorePaymentPurposePremiumGift(
    currency: json['currency'],
    amount: json['amount'],
    userId: json['user_id'],
    text: FormattedText.fromJson(json['text']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "amount": amount,
      "user_id": userId,
      "text": text.toJson(),
    };
  }
  
  @override
  StorePaymentPurposePremiumGift copyWith({
    String? currency,
    int? amount,
    int? userId,
    FormattedText? text,
  }) => StorePaymentPurposePremiumGift(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    userId: userId ?? this.userId,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'storePaymentPurposePremiumGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposePremiumGiftCodes extends StorePaymentPurpose {

  /// The user boosting a chat by creating Telegram Premium gift codes for other users
  const StorePaymentPurposePremiumGiftCodes({
    required this.boostedChatId,
    required this.currency,
    required this.amount,
    required this.userIds,
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

  /// [text] Text to show along with the gift codes; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;
  
  /// Parse from a json
  factory StorePaymentPurposePremiumGiftCodes.fromJson(Map<String, dynamic> json) => StorePaymentPurposePremiumGiftCodes(
    boostedChatId: json['boosted_chat_id'],
    currency: json['currency'],
    amount: json['amount'],
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
    text: FormattedText.fromJson(json['text']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "boosted_chat_id": boostedChatId,
      "currency": currency,
      "amount": amount,
      "user_ids": userIds.map((i) => i).toList(),
      "text": text.toJson(),
    };
  }
  
  @override
  StorePaymentPurposePremiumGiftCodes copyWith({
    int? boostedChatId,
    String? currency,
    int? amount,
    List<int>? userIds,
    FormattedText? text,
  }) => StorePaymentPurposePremiumGiftCodes(
    boostedChatId: boostedChatId ?? this.boostedChatId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    userIds: userIds ?? this.userIds,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'storePaymentPurposePremiumGiftCodes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposePremiumGiveaway extends StorePaymentPurpose {

  /// The user creating a Telegram Premium giveaway
  const StorePaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
  });
  
  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;
  
  /// Parse from a json
  factory StorePaymentPurposePremiumGiveaway.fromJson(Map<String, dynamic> json) => StorePaymentPurposePremiumGiveaway(
    parameters: GiveawayParameters.fromJson(json['parameters']),
    currency: json['currency'],
    amount: json['amount'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "parameters": parameters.toJson(),
      "currency": currency,
      "amount": amount,
    };
  }
  
  @override
  StorePaymentPurposePremiumGiveaway copyWith({
    GiveawayParameters? parameters,
    String? currency,
    int? amount,
  }) => StorePaymentPurposePremiumGiveaway(
    parameters: parameters ?? this.parameters,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
  );

  static const CONSTRUCTOR = 'storePaymentPurposePremiumGiveaway';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposeStarGiveaway extends StorePaymentPurpose {

  /// The user creating a Telegram Star giveaway
  const StorePaymentPurposeStarGiveaway({
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
  factory StorePaymentPurposeStarGiveaway.fromJson(Map<String, dynamic> json) => StorePaymentPurposeStarGiveaway(
    parameters: GiveawayParameters.fromJson(json['parameters']),
    currency: json['currency'],
    amount: json['amount'],
    winnerCount: json['winner_count'],
    starCount: json['star_count'],
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
  StorePaymentPurposeStarGiveaway copyWith({
    GiveawayParameters? parameters,
    String? currency,
    int? amount,
    int? winnerCount,
    int? starCount,
  }) => StorePaymentPurposeStarGiveaway(
    parameters: parameters ?? this.parameters,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    winnerCount: winnerCount ?? this.winnerCount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'storePaymentPurposeStarGiveaway';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposeStars extends StorePaymentPurpose {

  /// The user buying Telegram Stars
  const StorePaymentPurposeStars({
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
  factory StorePaymentPurposeStars.fromJson(Map<String, dynamic> json) => StorePaymentPurposeStars(
    currency: json['currency'],
    amount: json['amount'],
    starCount: json['star_count'],
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
  StorePaymentPurposeStars copyWith({
    String? currency,
    int? amount,
    int? starCount,
  }) => StorePaymentPurposeStars(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'storePaymentPurposeStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposeGiftedStars extends StorePaymentPurpose {

  /// The user buying Telegram Stars for other users
  const StorePaymentPurposeGiftedStars({
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
  factory StorePaymentPurposeGiftedStars.fromJson(Map<String, dynamic> json) => StorePaymentPurposeGiftedStars(
    userId: json['user_id'],
    currency: json['currency'],
    amount: json['amount'],
    starCount: json['star_count'],
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
  StorePaymentPurposeGiftedStars copyWith({
    int? userId,
    String? currency,
    int? amount,
    int? starCount,
  }) => StorePaymentPurposeGiftedStars(
    userId: userId ?? this.userId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'storePaymentPurposeGiftedStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
