part of '../tdapi.dart';

class AffiliateProgramParameters extends TdObject {

  /// Describes parameters of an affiliate program
  const AffiliateProgramParameters({
    required this.commissionPerMille,
    required this.monthCount,
  });
  
  /// [commissionPerMille] The number of Telegram Stars received by the affiliate for each 1000 Telegram Stars received by the program owner;. getOption("affiliate_program_commission_per_mille_min")-getOption("affiliate_program_commission_per_mille_max")
  final int commissionPerMille;

  /// [monthCount] Number of months the program will be active; 0-36. If 0, then the program is eternal
  final int monthCount;
  
  /// Parse from a json
  factory AffiliateProgramParameters.fromJson(Map<String, dynamic> json) => AffiliateProgramParameters(
    commissionPerMille: json['commission_per_mille'],
    monthCount: json['month_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "commission_per_mille": commissionPerMille,
      "month_count": monthCount,
    };
  }
  
  AffiliateProgramParameters copyWith({
    int? commissionPerMille,
    int? monthCount,
  }) => AffiliateProgramParameters(
    commissionPerMille: commissionPerMille ?? this.commissionPerMille,
    monthCount: monthCount ?? this.monthCount,
  );

  static const CONSTRUCTOR = 'affiliateProgramParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
