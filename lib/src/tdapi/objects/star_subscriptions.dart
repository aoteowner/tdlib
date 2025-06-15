import '../tdapi.dart';

class StarSubscriptions extends TdObject {
  /// Represents a list of Telegram Star subscriptions
  const StarSubscriptions({
    required this.starAmount,
    required this.subscriptions,
    required this.requiredStarCount,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [starAmount] The amount of owned Telegram Stars
  final StarAmount starAmount;

  /// [subscriptions] List of subscriptions for Telegram Stars
  final List<StarSubscription> subscriptions;

  /// [requiredStarCount] The number of Telegram Stars required to buy to extend subscriptions expiring soon
  final int requiredStarCount;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory StarSubscriptions.fromJson(Map<String, dynamic> json) =>
      StarSubscriptions(
        starAmount: StarAmount.fromJson(json['star_amount'] ?? {}),
        subscriptions: json['subscriptions'] == null
            ? <StarSubscription>[]
            : (json['subscriptions'] as List)
                .map((e) => StarSubscription.fromJson(e ?? {}))
                .toList(),
        requiredStarCount: json['required_star_count'] ?? 0,
        nextOffset: json['next_offset'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_amount": starAmount.toJson(),
      "subscriptions": subscriptions.map((e) => e.toJson()).toList(),
      "required_star_count": requiredStarCount,
      "next_offset": nextOffset,
    };
  }

  StarSubscriptions copyWith({
    StarAmount? starAmount,
    List<StarSubscription>? subscriptions,
    int? requiredStarCount,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return StarSubscriptions(
      starAmount: starAmount ?? this.starAmount,
      subscriptions: subscriptions ?? this.subscriptions,
      requiredStarCount: requiredStarCount ?? this.requiredStarCount,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'starSubscriptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
