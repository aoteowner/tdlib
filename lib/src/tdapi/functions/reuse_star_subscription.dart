part of '../tdapi.dart';

class ReuseStarSubscription extends TdFunction {

  /// Reuses an active Telegram Star subscription to a channel chat and joins the chat again
  const ReuseStarSubscription({
    required this.subscriptionId,
  });
  
  /// [subscriptionId] Identifier of the subscription
  final String subscriptionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "subscription_id": subscriptionId,
      "@extra": extra,
    };
  }
  
  ReuseStarSubscription copyWith({
    String? subscriptionId,
  }) => ReuseStarSubscription(
    subscriptionId: subscriptionId ?? this.subscriptionId,
  );

  static const CONSTRUCTOR = 'reuseStarSubscription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
