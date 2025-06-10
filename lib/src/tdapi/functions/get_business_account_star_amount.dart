part of '../tdapi.dart';

class GetBusinessAccountStarAmount extends TdFunction {

  /// Returns the amount of Telegram Stars owned by a business account; for bots only
  const GetBusinessAccountStarAmount({
    required this.businessConnectionId,
  });
  
  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "@extra": extra,
    };
  }
  
  GetBusinessAccountStarAmount copyWith({
    String? businessConnectionId,
  }) => GetBusinessAccountStarAmount(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
  );

  static const CONSTRUCTOR = 'getBusinessAccountStarAmount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
