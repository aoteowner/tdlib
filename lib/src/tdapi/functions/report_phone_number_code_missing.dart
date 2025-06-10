part of '../tdapi.dart';

class ReportPhoneNumberCodeMissing extends TdFunction {

  /// Reports that authentication code wasn't delivered via SMS to the specified phone number; for official mobile applications only
  const ReportPhoneNumberCodeMissing({
    required this.mobileNetworkCode,
  });
  
  /// [mobileNetworkCode] Current mobile network code
  final String mobileNetworkCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mobile_network_code": mobileNetworkCode,
      "@extra": extra,
    };
  }
  
  ReportPhoneNumberCodeMissing copyWith({
    String? mobileNetworkCode,
  }) => ReportPhoneNumberCodeMissing(
    mobileNetworkCode: mobileNetworkCode ?? this.mobileNetworkCode,
  );

  static const CONSTRUCTOR = 'reportPhoneNumberCodeMissing';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
