import '../tdapi.dart';

class AffiliateProgramInfo extends TdObject {
  /// Contains information about an active affiliate program
  const AffiliateProgramInfo({
    required this.parameters,
    required this.endDate,
    required this.dailyRevenuePerUserAmount,
  });

  /// [parameters] Parameters of the affiliate program
  final AffiliateProgramParameters parameters;

  /// [endDate] Point in time (Unix timestamp) when the affiliate program will be closed; 0 if the affiliate program isn't scheduled to be closed.. If positive, then the program can't be connected using connectAffiliateProgram, but active connections will work until the date
  final int endDate;

  /// [dailyRevenuePerUserAmount] The amount of daily revenue per user in Telegram Stars of the bot that created the affiliate program
  final StarAmount dailyRevenuePerUserAmount;

  factory AffiliateProgramInfo.fromJson(Map<String, dynamic> json) =>
      AffiliateProgramInfo(
        parameters:
            AffiliateProgramParameters.fromJson(json['parameters'] ?? {}),
        endDate: json['end_date'] ?? 0,
        dailyRevenuePerUserAmount:
            StarAmount.fromJson(json['daily_revenue_per_user_amount'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "parameters": parameters.toJson(),
      "end_date": endDate,
      "daily_revenue_per_user_amount": dailyRevenuePerUserAmount.toJson(),
    };
  }

  AffiliateProgramInfo copyWith({
    AffiliateProgramParameters? parameters,
    int? endDate,
    StarAmount? dailyRevenuePerUserAmount,
  }) {
    return AffiliateProgramInfo(
      parameters: parameters ?? this.parameters,
      endDate: endDate ?? this.endDate,
      dailyRevenuePerUserAmount:
          dailyRevenuePerUserAmount ?? this.dailyRevenuePerUserAmount,
    );
  }

  static const CONSTRUCTOR = 'affiliateProgramInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
