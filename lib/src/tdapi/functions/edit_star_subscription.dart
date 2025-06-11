import '../tdapi.dart';

class EditStarSubscription extends TdFunction {

  /// Cancels or re-enables Telegram Star subscription
  const EditStarSubscription({
    required this.subscriptionId,
    required this.isCanceled,
  });
  
  /// [subscriptionId] Identifier of the subscription to change
  final String subscriptionId;

  /// [isCanceled] New value of is_canceled
  final bool isCanceled;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "subscription_id": subscriptionId,
      "is_canceled": isCanceled,
      "@extra": extra,
    };
  }
  
  EditStarSubscription copyWith({
    String? subscriptionId,
    bool? isCanceled,
  }) => EditStarSubscription(
    subscriptionId: subscriptionId ?? this.subscriptionId,
    isCanceled: isCanceled ?? this.isCanceled,
  );

  static const CONSTRUCTOR = 'editStarSubscription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
