import '../tdapi.dart';

class SendPhoneNumberFirebaseSms extends TdFunction {

  /// Sends Firebase Authentication SMS to the specified phone number. Works only when received a code of the type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
  const SendPhoneNumberFirebaseSms({
    required this.token,
  });
  
  /// [token] Play Integrity API or SafetyNet Attestation API token for the Android application, or secret from push notification for the iOS application
  final String token;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
      "@extra": extra,
    };
  }
  
  SendPhoneNumberFirebaseSms copyWith({
    String? token,
  }) => SendPhoneNumberFirebaseSms(
    token: token ?? this.token,
  );

  static const CONSTRUCTOR = 'sendPhoneNumberFirebaseSms';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
