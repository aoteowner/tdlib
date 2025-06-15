import '../tdapi.dart';

class GetPaidMessageRevenue extends TdFunction {
  /// Returns the total number of Telegram Stars received by the current user for paid messages from the given user
  const GetPaidMessageRevenue({
    required this.userId,
  });

  /// [userId] Identifier of the user
  final int userId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "@extra": extra,
    };
  }

  GetPaidMessageRevenue copyWith({
    int? userId,
  }) {
    return GetPaidMessageRevenue(
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'getPaidMessageRevenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}
