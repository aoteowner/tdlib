import '../tdapi.dart';

class GetStarRevenueStatistics extends TdFunction {

  /// Returns detailed Telegram Star revenue statistics
  const GetStarRevenueStatistics({
    required this.ownerId,
    required this.isDark,
  });
  
  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier of the current user, an owned bot, or a supergroup or a channel chat with supergroupFullInfo.can_get_star_revenue_statistics == true
  final MessageSender ownerId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "is_dark": isDark,
      "@extra": extra,
    };
  }
  
  GetStarRevenueStatistics copyWith({
    MessageSender? ownerId,
    bool? isDark,
  }) => GetStarRevenueStatistics(
    ownerId: ownerId ?? this.ownerId,
    isDark: isDark ?? this.isDark,
  );

  static const CONSTRUCTOR = 'getStarRevenueStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
