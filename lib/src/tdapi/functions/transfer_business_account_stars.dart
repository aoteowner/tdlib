import '../tdapi.dart';

class TransferBusinessAccountStars extends TdFunction {

  /// Transfer Telegram Stars from the business account to the business bot; for bots only
  const TransferBusinessAccountStars({
    required this.businessConnectionId,
    required this.starCount,
  });
  
  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [starCount] Number of Telegram Stars to transfer
  final int starCount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "star_count": starCount,
      "@extra": extra,
    };
  }
  
  TransferBusinessAccountStars copyWith({
    String? businessConnectionId,
    int? starCount,
  }) => TransferBusinessAccountStars(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'transferBusinessAccountStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
