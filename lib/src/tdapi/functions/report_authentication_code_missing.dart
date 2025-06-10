part of '../tdapi.dart';

class ReportAuthenticationCodeMissing extends TdFunction {

  /// Reports that authentication code wasn't delivered via SMS; for official mobile applications only. Works only when the current authorization state is authorizationStateWaitCode
  const ReportAuthenticationCodeMissing({
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
  
  ReportAuthenticationCodeMissing copyWith({
    String? mobileNetworkCode,
  }) => ReportAuthenticationCodeMissing(
    mobileNetworkCode: mobileNetworkCode ?? this.mobileNetworkCode,
  );

  static const CONSTRUCTOR = 'reportAuthenticationCodeMissing';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
