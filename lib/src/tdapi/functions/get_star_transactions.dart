import '../tdapi.dart';

class GetStarTransactions extends TdFunction {
  /// Returns the list of Telegram Star transactions for the specified owner
  const GetStarTransactions({
    required this.ownerId,
    required this.subscriptionId,
    this.direction,
    required this.offset,
    required this.limit,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be the identifier of the current user, identifier of an owned bot,. or identifier of a supergroup or a channel chat with supergroupFullInfo.can_get_star_revenue_statistics == true
  final MessageSender ownerId;

  /// [subscriptionId] If non-empty, only transactions related to the Star Subscription will be returned
  final String subscriptionId;

  /// [direction] Direction of the transactions to receive; pass null to get all transactions
  final StarTransactionDirection? direction;

  /// [offset] Offset of the first transaction to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of transactions to return
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "subscription_id": subscriptionId,
      "direction": direction?.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetStarTransactions copyWith({
    MessageSender? ownerId,
    String? subscriptionId,
    StarTransactionDirection? direction,
    String? offset,
    int? limit,
  }) {
    return GetStarTransactions(
      ownerId: ownerId ?? this.ownerId,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      direction: direction ?? this.direction,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'getStarTransactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
