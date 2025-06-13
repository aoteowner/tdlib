import '../tdapi.dart';

class StarTransactionType extends TdObject {

  /// Describes type of transaction with Telegram Stars
  const StarTransactionType();
  
  /// a StarTransactionType return type can be :
  /// * [StarTransactionTypePremiumBotDeposit]
  /// * [StarTransactionTypeAppStoreDeposit]
  /// * [StarTransactionTypeGooglePlayDeposit]
  /// * [StarTransactionTypeFragmentDeposit]
  /// * [StarTransactionTypeUserDeposit]
  /// * [StarTransactionTypeGiveawayDeposit]
  /// * [StarTransactionTypeFragmentWithdrawal]
  /// * [StarTransactionTypeTelegramAdsWithdrawal]
  /// * [StarTransactionTypeTelegramApiUsage]
  /// * [StarTransactionTypeBotPaidMediaPurchase]
  /// * [StarTransactionTypeBotPaidMediaSale]
  /// * [StarTransactionTypeChannelPaidMediaPurchase]
  /// * [StarTransactionTypeChannelPaidMediaSale]
  /// * [StarTransactionTypeBotInvoicePurchase]
  /// * [StarTransactionTypeBotInvoiceSale]
  /// * [StarTransactionTypeBotSubscriptionPurchase]
  /// * [StarTransactionTypeBotSubscriptionSale]
  /// * [StarTransactionTypeChannelSubscriptionPurchase]
  /// * [StarTransactionTypeChannelSubscriptionSale]
  /// * [StarTransactionTypeGiftPurchase]
  /// * [StarTransactionTypeGiftTransfer]
  /// * [StarTransactionTypeGiftSale]
  /// * [StarTransactionTypeGiftUpgrade]
  /// * [StarTransactionTypeUpgradedGiftPurchase]
  /// * [StarTransactionTypeUpgradedGiftSale]
  /// * [StarTransactionTypeChannelPaidReactionSend]
  /// * [StarTransactionTypeChannelPaidReactionReceive]
  /// * [StarTransactionTypeAffiliateProgramCommission]
  /// * [StarTransactionTypePaidMessageSend]
  /// * [StarTransactionTypePaidMessageReceive]
  /// * [StarTransactionTypePremiumPurchase]
  /// * [StarTransactionTypeBusinessBotTransferSend]
  /// * [StarTransactionTypeBusinessBotTransferReceive]
  /// * [StarTransactionTypeUnsupported]
  factory StarTransactionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StarTransactionTypePremiumBotDeposit.CONSTRUCTOR:
        return StarTransactionTypePremiumBotDeposit.fromJson(json);
      case StarTransactionTypeAppStoreDeposit.CONSTRUCTOR:
        return StarTransactionTypeAppStoreDeposit.fromJson(json);
      case StarTransactionTypeGooglePlayDeposit.CONSTRUCTOR:
        return StarTransactionTypeGooglePlayDeposit.fromJson(json);
      case StarTransactionTypeFragmentDeposit.CONSTRUCTOR:
        return StarTransactionTypeFragmentDeposit.fromJson(json);
      case StarTransactionTypeUserDeposit.CONSTRUCTOR:
        return StarTransactionTypeUserDeposit.fromJson(json);
      case StarTransactionTypeGiveawayDeposit.CONSTRUCTOR:
        return StarTransactionTypeGiveawayDeposit.fromJson(json);
      case StarTransactionTypeFragmentWithdrawal.CONSTRUCTOR:
        return StarTransactionTypeFragmentWithdrawal.fromJson(json);
      case StarTransactionTypeTelegramAdsWithdrawal.CONSTRUCTOR:
        return StarTransactionTypeTelegramAdsWithdrawal.fromJson(json);
      case StarTransactionTypeTelegramApiUsage.CONSTRUCTOR:
        return StarTransactionTypeTelegramApiUsage.fromJson(json);
      case StarTransactionTypeBotPaidMediaPurchase.CONSTRUCTOR:
        return StarTransactionTypeBotPaidMediaPurchase.fromJson(json);
      case StarTransactionTypeBotPaidMediaSale.CONSTRUCTOR:
        return StarTransactionTypeBotPaidMediaSale.fromJson(json);
      case StarTransactionTypeChannelPaidMediaPurchase.CONSTRUCTOR:
        return StarTransactionTypeChannelPaidMediaPurchase.fromJson(json);
      case StarTransactionTypeChannelPaidMediaSale.CONSTRUCTOR:
        return StarTransactionTypeChannelPaidMediaSale.fromJson(json);
      case StarTransactionTypeBotInvoicePurchase.CONSTRUCTOR:
        return StarTransactionTypeBotInvoicePurchase.fromJson(json);
      case StarTransactionTypeBotInvoiceSale.CONSTRUCTOR:
        return StarTransactionTypeBotInvoiceSale.fromJson(json);
      case StarTransactionTypeBotSubscriptionPurchase.CONSTRUCTOR:
        return StarTransactionTypeBotSubscriptionPurchase.fromJson(json);
      case StarTransactionTypeBotSubscriptionSale.CONSTRUCTOR:
        return StarTransactionTypeBotSubscriptionSale.fromJson(json);
      case StarTransactionTypeChannelSubscriptionPurchase.CONSTRUCTOR:
        return StarTransactionTypeChannelSubscriptionPurchase.fromJson(json);
      case StarTransactionTypeChannelSubscriptionSale.CONSTRUCTOR:
        return StarTransactionTypeChannelSubscriptionSale.fromJson(json);
      case StarTransactionTypeGiftPurchase.CONSTRUCTOR:
        return StarTransactionTypeGiftPurchase.fromJson(json);
      case StarTransactionTypeGiftTransfer.CONSTRUCTOR:
        return StarTransactionTypeGiftTransfer.fromJson(json);
      case StarTransactionTypeGiftSale.CONSTRUCTOR:
        return StarTransactionTypeGiftSale.fromJson(json);
      case StarTransactionTypeGiftUpgrade.CONSTRUCTOR:
        return StarTransactionTypeGiftUpgrade.fromJson(json);
      case StarTransactionTypeUpgradedGiftPurchase.CONSTRUCTOR:
        return StarTransactionTypeUpgradedGiftPurchase.fromJson(json);
      case StarTransactionTypeUpgradedGiftSale.CONSTRUCTOR:
        return StarTransactionTypeUpgradedGiftSale.fromJson(json);
      case StarTransactionTypeChannelPaidReactionSend.CONSTRUCTOR:
        return StarTransactionTypeChannelPaidReactionSend.fromJson(json);
      case StarTransactionTypeChannelPaidReactionReceive.CONSTRUCTOR:
        return StarTransactionTypeChannelPaidReactionReceive.fromJson(json);
      case StarTransactionTypeAffiliateProgramCommission.CONSTRUCTOR:
        return StarTransactionTypeAffiliateProgramCommission.fromJson(json);
      case StarTransactionTypePaidMessageSend.CONSTRUCTOR:
        return StarTransactionTypePaidMessageSend.fromJson(json);
      case StarTransactionTypePaidMessageReceive.CONSTRUCTOR:
        return StarTransactionTypePaidMessageReceive.fromJson(json);
      case StarTransactionTypePremiumPurchase.CONSTRUCTOR:
        return StarTransactionTypePremiumPurchase.fromJson(json);
      case StarTransactionTypeBusinessBotTransferSend.CONSTRUCTOR:
        return StarTransactionTypeBusinessBotTransferSend.fromJson(json);
      case StarTransactionTypeBusinessBotTransferReceive.CONSTRUCTOR:
        return StarTransactionTypeBusinessBotTransferReceive.fromJson(json);
      case StarTransactionTypeUnsupported.CONSTRUCTOR:
        return StarTransactionTypeUnsupported.fromJson(json);
      default:
        return const StarTransactionType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StarTransactionType copyWith() => const StarTransactionType();

  static const CONSTRUCTOR = 'starTransactionType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypePremiumBotDeposit extends StarTransactionType {

  /// The transaction is a deposit of Telegram Stars from the Premium bot; for regular users only
  const StarTransactionTypePremiumBotDeposit();
  
  /// Parse from a json
  factory StarTransactionTypePremiumBotDeposit.fromJson(Map<String, dynamic> json) => const StarTransactionTypePremiumBotDeposit();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  StarTransactionTypePremiumBotDeposit copyWith() => const StarTransactionTypePremiumBotDeposit();

  static const CONSTRUCTOR = 'starTransactionTypePremiumBotDeposit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeAppStoreDeposit extends StarTransactionType {

  /// The transaction is a deposit of Telegram Stars from App Store; for regular users only
  const StarTransactionTypeAppStoreDeposit();
  
  /// Parse from a json
  factory StarTransactionTypeAppStoreDeposit.fromJson(Map<String, dynamic> json) => const StarTransactionTypeAppStoreDeposit();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  StarTransactionTypeAppStoreDeposit copyWith() => const StarTransactionTypeAppStoreDeposit();

  static const CONSTRUCTOR = 'starTransactionTypeAppStoreDeposit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeGooglePlayDeposit extends StarTransactionType {

  /// The transaction is a deposit of Telegram Stars from Google Play; for regular users only
  const StarTransactionTypeGooglePlayDeposit();
  
  /// Parse from a json
  factory StarTransactionTypeGooglePlayDeposit.fromJson(Map<String, dynamic> json) => const StarTransactionTypeGooglePlayDeposit();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  StarTransactionTypeGooglePlayDeposit copyWith() => const StarTransactionTypeGooglePlayDeposit();

  static const CONSTRUCTOR = 'starTransactionTypeGooglePlayDeposit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeFragmentDeposit extends StarTransactionType {

  /// The transaction is a deposit of Telegram Stars from Fragment; for regular users and bots only
  const StarTransactionTypeFragmentDeposit();
  
  /// Parse from a json
  factory StarTransactionTypeFragmentDeposit.fromJson(Map<String, dynamic> json) => const StarTransactionTypeFragmentDeposit();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  StarTransactionTypeFragmentDeposit copyWith() => const StarTransactionTypeFragmentDeposit();

  static const CONSTRUCTOR = 'starTransactionTypeFragmentDeposit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeUserDeposit extends StarTransactionType {

  /// The transaction is a deposit of Telegram Stars by another user; for regular users only
  const StarTransactionTypeUserDeposit({
    required this.userId,
    this.sticker,
  });
  
  /// [userId] Identifier of the user that gifted Telegram Stars; 0 if the user was anonymous
  final int userId;

  /// [sticker] The sticker to be shown in the transaction information; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory StarTransactionTypeUserDeposit.fromJson(Map<String, dynamic> json) => StarTransactionTypeUserDeposit(
    userId: json['user_id'] ?? 0,
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "sticker": sticker?.toJson(),
    };
  }
  
  @override
  StarTransactionTypeUserDeposit copyWith({
    int? userId,
    Sticker? sticker,
  }) => StarTransactionTypeUserDeposit(
    userId: userId ?? this.userId,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'starTransactionTypeUserDeposit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeGiveawayDeposit extends StarTransactionType {

  /// The transaction is a deposit of Telegram Stars from a giveaway; for regular users only
  const StarTransactionTypeGiveawayDeposit({
    required this.chatId,
    required this.giveawayMessageId,
  });
  
  /// [chatId] Identifier of a supergroup or a channel chat that created the giveaway
  final int chatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway; can be 0 or an identifier of a deleted message
  final int giveawayMessageId;
  
  /// Parse from a json
  factory StarTransactionTypeGiveawayDeposit.fromJson(Map<String, dynamic> json) => StarTransactionTypeGiveawayDeposit(
    chatId: json['chat_id'] ?? 0,
    giveawayMessageId: json['giveaway_message_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "giveaway_message_id": giveawayMessageId,
    };
  }
  
  @override
  StarTransactionTypeGiveawayDeposit copyWith({
    int? chatId,
    int? giveawayMessageId,
  }) => StarTransactionTypeGiveawayDeposit(
    chatId: chatId ?? this.chatId,
    giveawayMessageId: giveawayMessageId ?? this.giveawayMessageId,
  );

  static const CONSTRUCTOR = 'starTransactionTypeGiveawayDeposit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeFragmentWithdrawal extends StarTransactionType {

  /// The transaction is a withdrawal of earned Telegram Stars to Fragment; for regular users, bots, supergroup and channel chats only
  const StarTransactionTypeFragmentWithdrawal({
    this.withdrawalState,
  });
  
  /// [withdrawalState] State of the withdrawal; may be null for refunds from Fragment
  final RevenueWithdrawalState? withdrawalState;
  
  /// Parse from a json
  factory StarTransactionTypeFragmentWithdrawal.fromJson(Map<String, dynamic> json) => StarTransactionTypeFragmentWithdrawal(
    withdrawalState: RevenueWithdrawalState.fromJson(json['withdrawal_state'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "withdrawal_state": withdrawalState?.toJson(),
    };
  }
  
  @override
  StarTransactionTypeFragmentWithdrawal copyWith({
    RevenueWithdrawalState? withdrawalState,
  }) => StarTransactionTypeFragmentWithdrawal(
    withdrawalState: withdrawalState ?? this.withdrawalState,
  );

  static const CONSTRUCTOR = 'starTransactionTypeFragmentWithdrawal';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeTelegramAdsWithdrawal extends StarTransactionType {

  /// The transaction is a withdrawal of earned Telegram Stars to Telegram Ad platform; for bots and channel chats only
  const StarTransactionTypeTelegramAdsWithdrawal();
  
  /// Parse from a json
  factory StarTransactionTypeTelegramAdsWithdrawal.fromJson(Map<String, dynamic> json) => const StarTransactionTypeTelegramAdsWithdrawal();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  StarTransactionTypeTelegramAdsWithdrawal copyWith() => const StarTransactionTypeTelegramAdsWithdrawal();

  static const CONSTRUCTOR = 'starTransactionTypeTelegramAdsWithdrawal';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeTelegramApiUsage extends StarTransactionType {

  /// The transaction is a payment for Telegram API usage; for bots only
  const StarTransactionTypeTelegramApiUsage({
    required this.requestCount,
  });
  
  /// [requestCount] The number of billed requests
  final int requestCount;
  
  /// Parse from a json
  factory StarTransactionTypeTelegramApiUsage.fromJson(Map<String, dynamic> json) => StarTransactionTypeTelegramApiUsage(
    requestCount: json['request_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "request_count": requestCount,
    };
  }
  
  @override
  StarTransactionTypeTelegramApiUsage copyWith({
    int? requestCount,
  }) => StarTransactionTypeTelegramApiUsage(
    requestCount: requestCount ?? this.requestCount,
  );

  static const CONSTRUCTOR = 'starTransactionTypeTelegramApiUsage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBotPaidMediaPurchase extends StarTransactionType {

  /// The transaction is a purchase of paid media from a bot or a business account by the current user; for regular users only
  const StarTransactionTypeBotPaidMediaPurchase({
    required this.userId,
    required this.media,
  });
  
  /// [userId] Identifier of the bot or the business account user that sent the paid media
  final int userId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;
  
  /// Parse from a json
  factory StarTransactionTypeBotPaidMediaPurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypeBotPaidMediaPurchase(
    userId: json['user_id'] ?? 0,
    media: json['media'] == null ? [] :(json['media'] as List).map((e) => PaidMedia.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "media": media.map((e) => e.toJson()).toList(),
    };
  }
  
  @override
  StarTransactionTypeBotPaidMediaPurchase copyWith({
    int? userId,
    List<PaidMedia>? media,
  }) => StarTransactionTypeBotPaidMediaPurchase(
    userId: userId ?? this.userId,
    media: media ?? this.media,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBotPaidMediaPurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBotPaidMediaSale extends StarTransactionType {

  /// The transaction is a sale of paid media by the bot or a business account managed by the bot; for bots only
  const StarTransactionTypeBotPaidMediaSale({
    required this.userId,
    required this.media,
    required this.payload,
    this.affiliate,
  });
  
  /// [userId] Identifier of the user that bought the media
  final int userId;

  /// [media] The bought media
  final List<PaidMedia> media;

  /// [payload] Bot-provided payload
  final String payload;

  /// [affiliate] Information about the affiliate which received commission from the transaction; may be null if none
  final AffiliateInfo? affiliate;
  
  /// Parse from a json
  factory StarTransactionTypeBotPaidMediaSale.fromJson(Map<String, dynamic> json) => StarTransactionTypeBotPaidMediaSale(
    userId: json['user_id'] ?? 0,
    media: json['media'] == null ? [] :(json['media'] as List).map((e) => PaidMedia.fromJson(e ?? {})).toList(),
    payload: json['payload'] ?? '',
    affiliate: AffiliateInfo.fromJson(json['affiliate'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "media": media.map((e) => e.toJson()).toList(),
      "payload": payload,
      "affiliate": affiliate?.toJson(),
    };
  }
  
  @override
  StarTransactionTypeBotPaidMediaSale copyWith({
    int? userId,
    List<PaidMedia>? media,
    String? payload,
    AffiliateInfo? affiliate,
  }) => StarTransactionTypeBotPaidMediaSale(
    userId: userId ?? this.userId,
    media: media ?? this.media,
    payload: payload ?? this.payload,
    affiliate: affiliate ?? this.affiliate,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBotPaidMediaSale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeChannelPaidMediaPurchase extends StarTransactionType {

  /// The transaction is a purchase of paid media from a channel by the current user; for regular users only
  const StarTransactionTypeChannelPaidMediaPurchase({
    required this.chatId,
    required this.messageId,
    required this.media,
  });
  
  /// [chatId] Identifier of the channel chat that sent the paid media
  final int chatId;

  /// [messageId] Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;
  
  /// Parse from a json
  factory StarTransactionTypeChannelPaidMediaPurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypeChannelPaidMediaPurchase(
    chatId: json['chat_id'] ?? 0,
    messageId: json['message_id'] ?? 0,
    media: json['media'] == null ? [] :(json['media'] as List).map((e) => PaidMedia.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "media": media.map((e) => e.toJson()).toList(),
    };
  }
  
  @override
  StarTransactionTypeChannelPaidMediaPurchase copyWith({
    int? chatId,
    int? messageId,
    List<PaidMedia>? media,
  }) => StarTransactionTypeChannelPaidMediaPurchase(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    media: media ?? this.media,
  );

  static const CONSTRUCTOR = 'starTransactionTypeChannelPaidMediaPurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeChannelPaidMediaSale extends StarTransactionType {

  /// The transaction is a sale of paid media by the channel chat; for channel chats only
  const StarTransactionTypeChannelPaidMediaSale({
    required this.userId,
    required this.messageId,
    required this.media,
  });
  
  /// [userId] Identifier of the user that bought the media
  final int userId;

  /// [messageId] Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media
  final List<PaidMedia> media;
  
  /// Parse from a json
  factory StarTransactionTypeChannelPaidMediaSale.fromJson(Map<String, dynamic> json) => StarTransactionTypeChannelPaidMediaSale(
    userId: json['user_id'] ?? 0,
    messageId: json['message_id'] ?? 0,
    media: json['media'] == null ? [] :(json['media'] as List).map((e) => PaidMedia.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "message_id": messageId,
      "media": media.map((e) => e.toJson()).toList(),
    };
  }
  
  @override
  StarTransactionTypeChannelPaidMediaSale copyWith({
    int? userId,
    int? messageId,
    List<PaidMedia>? media,
  }) => StarTransactionTypeChannelPaidMediaSale(
    userId: userId ?? this.userId,
    messageId: messageId ?? this.messageId,
    media: media ?? this.media,
  );

  static const CONSTRUCTOR = 'starTransactionTypeChannelPaidMediaSale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBotInvoicePurchase extends StarTransactionType {

  /// The transaction is a purchase of a product from a bot or a business account by the current user; for regular users only
  const StarTransactionTypeBotInvoicePurchase({
    required this.userId,
    required this.productInfo,
  });
  
  /// [userId] Identifier of the bot or the business account user that created the invoice
  final int userId;

  /// [productInfo] Information about the bought product
  final ProductInfo productInfo;
  
  /// Parse from a json
  factory StarTransactionTypeBotInvoicePurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypeBotInvoicePurchase(
    userId: json['user_id'] ?? 0,
    productInfo: ProductInfo.fromJson(json['product_info'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "product_info": productInfo.toJson(),
    };
  }
  
  @override
  StarTransactionTypeBotInvoicePurchase copyWith({
    int? userId,
    ProductInfo? productInfo,
  }) => StarTransactionTypeBotInvoicePurchase(
    userId: userId ?? this.userId,
    productInfo: productInfo ?? this.productInfo,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBotInvoicePurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBotInvoiceSale extends StarTransactionType {

  /// The transaction is a sale of a product by the bot; for bots only
  const StarTransactionTypeBotInvoiceSale({
    required this.userId,
    required this.productInfo,
    required this.invoicePayload,
    this.affiliate,
  });
  
  /// [userId] Identifier of the user that bought the product
  final int userId;

  /// [productInfo] Information about the bought product
  final ProductInfo productInfo;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [affiliate] Information about the affiliate which received commission from the transaction; may be null if none
  final AffiliateInfo? affiliate;
  
  /// Parse from a json
  factory StarTransactionTypeBotInvoiceSale.fromJson(Map<String, dynamic> json) => StarTransactionTypeBotInvoiceSale(
    userId: json['user_id'] ?? 0,
    productInfo: ProductInfo.fromJson(json['product_info'] ?? {}),
    invoicePayload: json['invoice_payload'] ?? '',
    affiliate: AffiliateInfo.fromJson(json['affiliate'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "product_info": productInfo.toJson(),
      "invoice_payload": invoicePayload,
      "affiliate": affiliate?.toJson(),
    };
  }
  
  @override
  StarTransactionTypeBotInvoiceSale copyWith({
    int? userId,
    ProductInfo? productInfo,
    String? invoicePayload,
    AffiliateInfo? affiliate,
  }) => StarTransactionTypeBotInvoiceSale(
    userId: userId ?? this.userId,
    productInfo: productInfo ?? this.productInfo,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    affiliate: affiliate ?? this.affiliate,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBotInvoiceSale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBotSubscriptionPurchase extends StarTransactionType {

  /// The transaction is a purchase of a subscription from a bot or a business account by the current user; for regular users only
  const StarTransactionTypeBotSubscriptionPurchase({
    required this.userId,
    required this.subscriptionPeriod,
    required this.productInfo,
  });
  
  /// [userId] Identifier of the bot or the business account user that created the subscription link
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram Star debitings
  final int subscriptionPeriod;

  /// [productInfo] Information about the bought subscription
  final ProductInfo productInfo;
  
  /// Parse from a json
  factory StarTransactionTypeBotSubscriptionPurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypeBotSubscriptionPurchase(
    userId: json['user_id'] ?? 0,
    subscriptionPeriod: json['subscription_period'] ?? 0,
    productInfo: ProductInfo.fromJson(json['product_info'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "subscription_period": subscriptionPeriod,
      "product_info": productInfo.toJson(),
    };
  }
  
  @override
  StarTransactionTypeBotSubscriptionPurchase copyWith({
    int? userId,
    int? subscriptionPeriod,
    ProductInfo? productInfo,
  }) => StarTransactionTypeBotSubscriptionPurchase(
    userId: userId ?? this.userId,
    subscriptionPeriod: subscriptionPeriod ?? this.subscriptionPeriod,
    productInfo: productInfo ?? this.productInfo,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBotSubscriptionPurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBotSubscriptionSale extends StarTransactionType {

  /// The transaction is a sale of a subscription by the bot; for bots only
  const StarTransactionTypeBotSubscriptionSale({
    required this.userId,
    required this.subscriptionPeriod,
    required this.productInfo,
    required this.invoicePayload,
    this.affiliate,
  });
  
  /// [userId] Identifier of the user that bought the subscription
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram Star debitings
  final int subscriptionPeriod;

  /// [productInfo] Information about the bought subscription
  final ProductInfo productInfo;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [affiliate] Information about the affiliate which received commission from the transaction; may be null if none
  final AffiliateInfo? affiliate;
  
  /// Parse from a json
  factory StarTransactionTypeBotSubscriptionSale.fromJson(Map<String, dynamic> json) => StarTransactionTypeBotSubscriptionSale(
    userId: json['user_id'] ?? 0,
    subscriptionPeriod: json['subscription_period'] ?? 0,
    productInfo: ProductInfo.fromJson(json['product_info'] ?? {}),
    invoicePayload: json['invoice_payload'] ?? '',
    affiliate: AffiliateInfo.fromJson(json['affiliate'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "subscription_period": subscriptionPeriod,
      "product_info": productInfo.toJson(),
      "invoice_payload": invoicePayload,
      "affiliate": affiliate?.toJson(),
    };
  }
  
  @override
  StarTransactionTypeBotSubscriptionSale copyWith({
    int? userId,
    int? subscriptionPeriod,
    ProductInfo? productInfo,
    String? invoicePayload,
    AffiliateInfo? affiliate,
  }) => StarTransactionTypeBotSubscriptionSale(
    userId: userId ?? this.userId,
    subscriptionPeriod: subscriptionPeriod ?? this.subscriptionPeriod,
    productInfo: productInfo ?? this.productInfo,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    affiliate: affiliate ?? this.affiliate,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBotSubscriptionSale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeChannelSubscriptionPurchase extends StarTransactionType {

  /// The transaction is a purchase of a subscription to a channel chat by the current user; for regular users only
  const StarTransactionTypeChannelSubscriptionPurchase({
    required this.chatId,
    required this.subscriptionPeriod,
  });
  
  /// [chatId] Identifier of the channel chat that created the subscription
  final int chatId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram Star debitings
  final int subscriptionPeriod;
  
  /// Parse from a json
  factory StarTransactionTypeChannelSubscriptionPurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypeChannelSubscriptionPurchase(
    chatId: json['chat_id'] ?? 0,
    subscriptionPeriod: json['subscription_period'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "subscription_period": subscriptionPeriod,
    };
  }
  
  @override
  StarTransactionTypeChannelSubscriptionPurchase copyWith({
    int? chatId,
    int? subscriptionPeriod,
  }) => StarTransactionTypeChannelSubscriptionPurchase(
    chatId: chatId ?? this.chatId,
    subscriptionPeriod: subscriptionPeriod ?? this.subscriptionPeriod,
  );

  static const CONSTRUCTOR = 'starTransactionTypeChannelSubscriptionPurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeChannelSubscriptionSale extends StarTransactionType {

  /// The transaction is a sale of a subscription by the channel chat; for channel chats only
  const StarTransactionTypeChannelSubscriptionSale({
    required this.userId,
    required this.subscriptionPeriod,
  });
  
  /// [userId] Identifier of the user that bought the subscription
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram Star debitings
  final int subscriptionPeriod;
  
  /// Parse from a json
  factory StarTransactionTypeChannelSubscriptionSale.fromJson(Map<String, dynamic> json) => StarTransactionTypeChannelSubscriptionSale(
    userId: json['user_id'] ?? 0,
    subscriptionPeriod: json['subscription_period'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "subscription_period": subscriptionPeriod,
    };
  }
  
  @override
  StarTransactionTypeChannelSubscriptionSale copyWith({
    int? userId,
    int? subscriptionPeriod,
  }) => StarTransactionTypeChannelSubscriptionSale(
    userId: userId ?? this.userId,
    subscriptionPeriod: subscriptionPeriod ?? this.subscriptionPeriod,
  );

  static const CONSTRUCTOR = 'starTransactionTypeChannelSubscriptionSale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeGiftPurchase extends StarTransactionType {

  /// The transaction is a purchase of a regular gift; for regular users and bots only
  const StarTransactionTypeGiftPurchase({
    required this.ownerId,
    required this.gift,
  });
  
  /// [ownerId] Identifier of the user or the channel that received the gift 
  final MessageSender ownerId;

  /// [gift] The gift
  final Gift gift;
  
  /// Parse from a json
  factory StarTransactionTypeGiftPurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypeGiftPurchase(
    ownerId: MessageSender.fromJson(json['owner_id'] ?? {}),
    gift: Gift.fromJson(json['gift'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "gift": gift.toJson(),
    };
  }
  
  @override
  StarTransactionTypeGiftPurchase copyWith({
    MessageSender? ownerId,
    Gift? gift,
  }) => StarTransactionTypeGiftPurchase(
    ownerId: ownerId ?? this.ownerId,
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'starTransactionTypeGiftPurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeGiftTransfer extends StarTransactionType {

  /// The transaction is a transfer of an upgraded gift; for regular users only
  const StarTransactionTypeGiftTransfer({
    required this.ownerId,
    required this.gift,
  });
  
  /// [ownerId] Identifier of the user or the channel that received the gift 
  final MessageSender ownerId;

  /// [gift] The gift
  final UpgradedGift gift;
  
  /// Parse from a json
  factory StarTransactionTypeGiftTransfer.fromJson(Map<String, dynamic> json) => StarTransactionTypeGiftTransfer(
    ownerId: MessageSender.fromJson(json['owner_id'] ?? {}),
    gift: UpgradedGift.fromJson(json['gift'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "gift": gift.toJson(),
    };
  }
  
  @override
  StarTransactionTypeGiftTransfer copyWith({
    MessageSender? ownerId,
    UpgradedGift? gift,
  }) => StarTransactionTypeGiftTransfer(
    ownerId: ownerId ?? this.ownerId,
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'starTransactionTypeGiftTransfer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeGiftSale extends StarTransactionType {

  /// The transaction is a sale of a received gift; for regular users and channel chats only
  const StarTransactionTypeGiftSale({
    required this.userId,
    required this.gift,
  });
  
  /// [userId] Identifier of the user that sent the gift 
  final int userId;

  /// [gift] The gift
  final Gift gift;
  
  /// Parse from a json
  factory StarTransactionTypeGiftSale.fromJson(Map<String, dynamic> json) => StarTransactionTypeGiftSale(
    userId: json['user_id'] ?? 0,
    gift: Gift.fromJson(json['gift'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "gift": gift.toJson(),
    };
  }
  
  @override
  StarTransactionTypeGiftSale copyWith({
    int? userId,
    Gift? gift,
  }) => StarTransactionTypeGiftSale(
    userId: userId ?? this.userId,
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'starTransactionTypeGiftSale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeGiftUpgrade extends StarTransactionType {

  /// The transaction is an upgrade of a gift; for regular users only
  const StarTransactionTypeGiftUpgrade({
    required this.userId,
    required this.gift,
  });
  
  /// [userId] Identifier of the user that initially sent the gift 
  final int userId;

  /// [gift] The upgraded gift
  final UpgradedGift gift;
  
  /// Parse from a json
  factory StarTransactionTypeGiftUpgrade.fromJson(Map<String, dynamic> json) => StarTransactionTypeGiftUpgrade(
    userId: json['user_id'] ?? 0,
    gift: UpgradedGift.fromJson(json['gift'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "gift": gift.toJson(),
    };
  }
  
  @override
  StarTransactionTypeGiftUpgrade copyWith({
    int? userId,
    UpgradedGift? gift,
  }) => StarTransactionTypeGiftUpgrade(
    userId: userId ?? this.userId,
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'starTransactionTypeGiftUpgrade';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeUpgradedGiftPurchase extends StarTransactionType {

  /// The transaction is a purchase of an upgraded gift for some user or channel; for regular users only
  const StarTransactionTypeUpgradedGiftPurchase({
    required this.userId,
    required this.gift,
  });
  
  /// [userId] Identifier of the user that sold the gift 
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;
  
  /// Parse from a json
  factory StarTransactionTypeUpgradedGiftPurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypeUpgradedGiftPurchase(
    userId: json['user_id'] ?? 0,
    gift: UpgradedGift.fromJson(json['gift'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "gift": gift.toJson(),
    };
  }
  
  @override
  StarTransactionTypeUpgradedGiftPurchase copyWith({
    int? userId,
    UpgradedGift? gift,
  }) => StarTransactionTypeUpgradedGiftPurchase(
    userId: userId ?? this.userId,
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'starTransactionTypeUpgradedGiftPurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeUpgradedGiftSale extends StarTransactionType {

  /// The transaction is a sale of an upgraded gift; for regular users only
  const StarTransactionTypeUpgradedGiftSale({
    required this.userId,
    required this.gift,
    required this.affiliate,
  });
  
  /// [userId] Identifier of the user that bought the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;

  /// [affiliate] Information about commission received by Telegram from the transaction
  final AffiliateInfo affiliate;
  
  /// Parse from a json
  factory StarTransactionTypeUpgradedGiftSale.fromJson(Map<String, dynamic> json) => StarTransactionTypeUpgradedGiftSale(
    userId: json['user_id'] ?? 0,
    gift: UpgradedGift.fromJson(json['gift'] ?? {}),
    affiliate: AffiliateInfo.fromJson(json['affiliate'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "gift": gift.toJson(),
      "affiliate": affiliate.toJson(),
    };
  }
  
  @override
  StarTransactionTypeUpgradedGiftSale copyWith({
    int? userId,
    UpgradedGift? gift,
    AffiliateInfo? affiliate,
  }) => StarTransactionTypeUpgradedGiftSale(
    userId: userId ?? this.userId,
    gift: gift ?? this.gift,
    affiliate: affiliate ?? this.affiliate,
  );

  static const CONSTRUCTOR = 'starTransactionTypeUpgradedGiftSale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeChannelPaidReactionSend extends StarTransactionType {

  /// The transaction is a sending of a paid reaction to a message in a channel chat by the current user; for regular users only
  const StarTransactionTypeChannelPaidReactionSend({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the channel chat
  final int chatId;

  /// [messageId] Identifier of the reacted message; can be 0 or an identifier of a deleted message
  final int messageId;
  
  /// Parse from a json
  factory StarTransactionTypeChannelPaidReactionSend.fromJson(Map<String, dynamic> json) => StarTransactionTypeChannelPaidReactionSend(
    chatId: json['chat_id'] ?? 0,
    messageId: json['message_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
  
  @override
  StarTransactionTypeChannelPaidReactionSend copyWith({
    int? chatId,
    int? messageId,
  }) => StarTransactionTypeChannelPaidReactionSend(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'starTransactionTypeChannelPaidReactionSend';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeChannelPaidReactionReceive extends StarTransactionType {

  /// The transaction is a receiving of a paid reaction to a message by the channel chat; for channel chats only
  const StarTransactionTypeChannelPaidReactionReceive({
    required this.userId,
    required this.messageId,
  });
  
  /// [userId] Identifier of the user that added the paid reaction
  final int userId;

  /// [messageId] Identifier of the reacted message; can be 0 or an identifier of a deleted message
  final int messageId;
  
  /// Parse from a json
  factory StarTransactionTypeChannelPaidReactionReceive.fromJson(Map<String, dynamic> json) => StarTransactionTypeChannelPaidReactionReceive(
    userId: json['user_id'] ?? 0,
    messageId: json['message_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "message_id": messageId,
    };
  }
  
  @override
  StarTransactionTypeChannelPaidReactionReceive copyWith({
    int? userId,
    int? messageId,
  }) => StarTransactionTypeChannelPaidReactionReceive(
    userId: userId ?? this.userId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'starTransactionTypeChannelPaidReactionReceive';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeAffiliateProgramCommission extends StarTransactionType {

  /// The transaction is a receiving of a commission from an affiliate program; for regular users, bots and channel chats only
  const StarTransactionTypeAffiliateProgramCommission({
    required this.chatId,
    required this.commissionPerMille,
  });
  
  /// [chatId] Identifier of the chat that created the affiliate program
  final int chatId;

  /// [commissionPerMille] The number of Telegram Stars received by the affiliate for each 1000 Telegram Stars received by the program owner
  final int commissionPerMille;
  
  /// Parse from a json
  factory StarTransactionTypeAffiliateProgramCommission.fromJson(Map<String, dynamic> json) => StarTransactionTypeAffiliateProgramCommission(
    chatId: json['chat_id'] ?? 0,
    commissionPerMille: json['commission_per_mille'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "commission_per_mille": commissionPerMille,
    };
  }
  
  @override
  StarTransactionTypeAffiliateProgramCommission copyWith({
    int? chatId,
    int? commissionPerMille,
  }) => StarTransactionTypeAffiliateProgramCommission(
    chatId: chatId ?? this.chatId,
    commissionPerMille: commissionPerMille ?? this.commissionPerMille,
  );

  static const CONSTRUCTOR = 'starTransactionTypeAffiliateProgramCommission';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypePaidMessageSend extends StarTransactionType {

  /// The transaction is a sending of a paid message; for regular users only
  const StarTransactionTypePaidMessageSend({
    required this.chatId,
    required this.messageCount,
  });
  
  /// [chatId] Identifier of the chat that received the payment 
  final int chatId;

  /// [messageCount] Number of sent paid messages
  final int messageCount;
  
  /// Parse from a json
  factory StarTransactionTypePaidMessageSend.fromJson(Map<String, dynamic> json) => StarTransactionTypePaidMessageSend(
    chatId: json['chat_id'] ?? 0,
    messageCount: json['message_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_count": messageCount,
    };
  }
  
  @override
  StarTransactionTypePaidMessageSend copyWith({
    int? chatId,
    int? messageCount,
  }) => StarTransactionTypePaidMessageSend(
    chatId: chatId ?? this.chatId,
    messageCount: messageCount ?? this.messageCount,
  );

  static const CONSTRUCTOR = 'starTransactionTypePaidMessageSend';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypePaidMessageReceive extends StarTransactionType {

  /// The transaction is a receiving of a paid message; for regular users and supergroup chats only
  const StarTransactionTypePaidMessageReceive({
    required this.senderId,
    required this.messageCount,
    required this.commissionPerMille,
    required this.commissionStarAmount,
  });
  
  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [messageCount] Number of received paid messages
  final int messageCount;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram for each 1000 Telegram Stars paid for message sending
  final int commissionPerMille;

  /// [commissionStarAmount] The amount of Telegram Stars that were received by Telegram; can be negative for refunds
  final StarAmount commissionStarAmount;
  
  /// Parse from a json
  factory StarTransactionTypePaidMessageReceive.fromJson(Map<String, dynamic> json) => StarTransactionTypePaidMessageReceive(
    senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
    messageCount: json['message_count'] ?? 0,
    commissionPerMille: json['commission_per_mille'] ?? 0,
    commissionStarAmount: StarAmount.fromJson(json['commission_star_amount'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_id": senderId.toJson(),
      "message_count": messageCount,
      "commission_per_mille": commissionPerMille,
      "commission_star_amount": commissionStarAmount.toJson(),
    };
  }
  
  @override
  StarTransactionTypePaidMessageReceive copyWith({
    MessageSender? senderId,
    int? messageCount,
    int? commissionPerMille,
    StarAmount? commissionStarAmount,
  }) => StarTransactionTypePaidMessageReceive(
    senderId: senderId ?? this.senderId,
    messageCount: messageCount ?? this.messageCount,
    commissionPerMille: commissionPerMille ?? this.commissionPerMille,
    commissionStarAmount: commissionStarAmount ?? this.commissionStarAmount,
  );

  static const CONSTRUCTOR = 'starTransactionTypePaidMessageReceive';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypePremiumPurchase extends StarTransactionType {

  /// The transaction is a purchase of Telegram Premium subscription; for regular users and bots only
  const StarTransactionTypePremiumPurchase({
    required this.userId,
    required this.monthCount,
    this.sticker,
  });
  
  /// [userId] Identifier of the user that received the Telegram Premium subscription
  final int userId;

  /// [monthCount] Number of months the Telegram Premium subscription will be active
  final int monthCount;

  /// [sticker] A sticker to be shown in the transaction information; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory StarTransactionTypePremiumPurchase.fromJson(Map<String, dynamic> json) => StarTransactionTypePremiumPurchase(
    userId: json['user_id'] ?? 0,
    monthCount: json['month_count'] ?? 0,
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "month_count": monthCount,
      "sticker": sticker?.toJson(),
    };
  }
  
  @override
  StarTransactionTypePremiumPurchase copyWith({
    int? userId,
    int? monthCount,
    Sticker? sticker,
  }) => StarTransactionTypePremiumPurchase(
    userId: userId ?? this.userId,
    monthCount: monthCount ?? this.monthCount,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'starTransactionTypePremiumPurchase';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBusinessBotTransferSend extends StarTransactionType {

  /// The transaction is a transfer of Telegram Stars to a business bot; for regular users only
  const StarTransactionTypeBusinessBotTransferSend({
    required this.userId,
  });
  
  /// [userId] Identifier of the bot that received Telegram Stars
  final int userId;
  
  /// Parse from a json
  factory StarTransactionTypeBusinessBotTransferSend.fromJson(Map<String, dynamic> json) => StarTransactionTypeBusinessBotTransferSend(
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
  StarTransactionTypeBusinessBotTransferSend copyWith({
    int? userId,
  }) => StarTransactionTypeBusinessBotTransferSend(
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBusinessBotTransferSend';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeBusinessBotTransferReceive extends StarTransactionType {

  /// The transaction is a transfer of Telegram Stars from a business account; for bots only
  const StarTransactionTypeBusinessBotTransferReceive({
    required this.userId,
  });
  
  /// [userId] Identifier of the user that sent Telegram Stars
  final int userId;
  
  /// Parse from a json
  factory StarTransactionTypeBusinessBotTransferReceive.fromJson(Map<String, dynamic> json) => StarTransactionTypeBusinessBotTransferReceive(
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
  StarTransactionTypeBusinessBotTransferReceive copyWith({
    int? userId,
  }) => StarTransactionTypeBusinessBotTransferReceive(
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'starTransactionTypeBusinessBotTransferReceive';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarTransactionTypeUnsupported extends StarTransactionType {

  /// The transaction is a transaction of an unsupported type
  const StarTransactionTypeUnsupported();
  
  /// Parse from a json
  factory StarTransactionTypeUnsupported.fromJson(Map<String, dynamic> json) => const StarTransactionTypeUnsupported();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  StarTransactionTypeUnsupported copyWith() => const StarTransactionTypeUnsupported();

  static const CONSTRUCTOR = 'starTransactionTypeUnsupported';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
