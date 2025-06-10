part of '../tdapi.dart';

class StarSubscription extends TdObject {

  /// Contains information about subscription to a channel chat, a bot, or a business account that was paid in Telegram Stars
  const StarSubscription({
    required this.id,
    required this.chatId,
    required this.expirationDate,
    required this.isCanceled,
    required this.isExpiring,
    required this.pricing,
    required this.type,
  });
  
  /// [id] Unique identifier of the subscription
  final String id;

  /// [chatId] Identifier of the chat that is subscribed
  final int chatId;

  /// [expirationDate] Point in time (Unix timestamp) when the subscription will expire or expired
  final int expirationDate;

  /// [isCanceled] True, if the subscription was canceled
  final bool isCanceled;

  /// [isExpiring] True, if the subscription expires soon and there are no enough Telegram Stars on the user's balance to extend it
  final bool isExpiring;

  /// [pricing] The subscription plan
  final StarSubscriptionPricing pricing;

  /// [type] Type of the subscription
  final StarSubscriptionType type;
  
  /// Parse from a json
  factory StarSubscription.fromJson(Map<String, dynamic> json) => StarSubscription(
    id: json['id'],
    chatId: json['chat_id'],
    expirationDate: json['expiration_date'],
    isCanceled: json['is_canceled'],
    isExpiring: json['is_expiring'],
    pricing: StarSubscriptionPricing.fromJson(json['pricing']),
    type: StarSubscriptionType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "chat_id": chatId,
      "expiration_date": expirationDate,
      "is_canceled": isCanceled,
      "is_expiring": isExpiring,
      "pricing": pricing.toJson(),
      "type": type.toJson(),
    };
  }
  
  StarSubscription copyWith({
    String? id,
    int? chatId,
    int? expirationDate,
    bool? isCanceled,
    bool? isExpiring,
    StarSubscriptionPricing? pricing,
    StarSubscriptionType? type,
  }) => StarSubscription(
    id: id ?? this.id,
    chatId: chatId ?? this.chatId,
    expirationDate: expirationDate ?? this.expirationDate,
    isCanceled: isCanceled ?? this.isCanceled,
    isExpiring: isExpiring ?? this.isExpiring,
    pricing: pricing ?? this.pricing,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'starSubscription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
