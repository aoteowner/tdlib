import '../tdapi.dart';

class SetApplicationVerificationToken extends TdFunction {

  /// Application or reCAPTCHA verification has been completed. Can be called before authorization
  const SetApplicationVerificationToken({
    required this.verificationId,
    required this.token,
  });
  
  /// [verificationId] Unique identifier for the verification process as received from updateApplicationVerificationRequired or updateApplicationRecaptchaVerificationRequired
  final int verificationId;

  /// [token] Play Integrity API token for the Android application, or secret from push notification for the iOS application for application verification, or reCAPTCHA token for reCAPTCHA verifications;. pass an empty string to abort verification and receive error VERIFICATION_FAILED for the request
  final String token;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "verification_id": verificationId,
      "token": token,
      "@extra": extra,
    };
  }
  
  SetApplicationVerificationToken copyWith({
    int? verificationId,
    String? token,
  }) => SetApplicationVerificationToken(
    verificationId: verificationId ?? this.verificationId,
    token: token ?? this.token,
  );

  static const CONSTRUCTOR = 'setApplicationVerificationToken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
