part of '../tdapi.dart';

class GetStarSubscriptions extends TdFunction {

  /// Returns the list of Telegram Star subscriptions for the current user
  const GetStarSubscriptions({
    required this.onlyExpiring,
    required this.offset,
  });
  
  /// [onlyExpiring] Pass true to receive only expiring subscriptions for which there are no enough Telegram Stars to extend
  final bool onlyExpiring;

  /// [offset] Offset of the first subscription to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "only_expiring": onlyExpiring,
      "offset": offset,
      "@extra": extra,
    };
  }
  
  GetStarSubscriptions copyWith({
    bool? onlyExpiring,
    String? offset,
  }) => GetStarSubscriptions(
    onlyExpiring: onlyExpiring ?? this.onlyExpiring,
    offset: offset ?? this.offset,
  );

  static const CONSTRUCTOR = 'getStarSubscriptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
