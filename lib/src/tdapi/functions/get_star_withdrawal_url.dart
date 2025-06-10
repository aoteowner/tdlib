part of '../tdapi.dart';

class GetStarWithdrawalUrl extends TdFunction {

  /// Returns a URL for Telegram Star withdrawal
  const GetStarWithdrawalUrl({
    required this.ownerId,
    required this.starCount,
    required this.password,
  });
  
  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier of the current user, an owned bot, or an owned supergroup or channel chat
  final MessageSender ownerId;

  /// [starCount] The number of Telegram Stars to withdraw. Must be at least getOption("star_withdrawal_count_min")
  final int starCount;

  /// [password] The 2-step verification password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "star_count": starCount,
      "password": password,
      "@extra": extra,
    };
  }
  
  GetStarWithdrawalUrl copyWith({
    MessageSender? ownerId,
    int? starCount,
    String? password,
  }) => GetStarWithdrawalUrl(
    ownerId: ownerId ?? this.ownerId,
    starCount: starCount ?? this.starCount,
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'getStarWithdrawalUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
