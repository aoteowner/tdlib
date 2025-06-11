import '../tdapi.dart';

class ResendAuthenticationCode extends TdFunction {

  /// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null. and the server-specified timeout has passed, or when the current authorization state is authorizationStateWaitEmailCode
  const ResendAuthenticationCode({
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
  
  ResendAuthenticationCode copyWith({
    ResendCodeReason? reason,
  }) => ResendAuthenticationCode(
    reason: reason ?? this.reason,
  );

  static const CONSTRUCTOR = 'resendAuthenticationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
