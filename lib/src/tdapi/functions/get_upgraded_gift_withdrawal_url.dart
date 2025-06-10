part of '../tdapi.dart';

class GetUpgradedGiftWithdrawalUrl extends TdFunction {

  /// Returns a URL for upgraded gift withdrawal in the TON blockchain as an NFT; requires owner privileges for gifts owned by a chat
  const GetUpgradedGiftWithdrawalUrl({
    required this.receivedGiftId,
    required this.password,
  });
  
  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [password] The 2-step verification password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "received_gift_id": receivedGiftId,
      "password": password,
      "@extra": extra,
    };
  }
  
  GetUpgradedGiftWithdrawalUrl copyWith({
    String? receivedGiftId,
    String? password,
  }) => GetUpgradedGiftWithdrawalUrl(
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'getUpgradedGiftWithdrawalUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
