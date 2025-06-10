part of '../tdapi.dart';

class ResendPhoneNumberCode extends TdFunction {

  /// Resends the authentication code sent to a phone number. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed
  const ResendPhoneNumberCode({
    this.reason,
  });
  
  /// [reason] Reason of code resending; pass null if unknown
  final ResendCodeReason? reason;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reason": reason?.toJson(),
      "@extra": extra,
    };
  }
  
  ResendPhoneNumberCode copyWith({
    ResendCodeReason? reason,
  }) => ResendPhoneNumberCode(
    reason: reason ?? this.reason,
  );

  static const CONSTRUCTOR = 'resendPhoneNumberCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
