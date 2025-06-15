import '../tdapi.dart';

class PhoneNumberAuthenticationSettings extends TdObject {
  /// Contains settings for the authentication of the user's phone number
  const PhoneNumberAuthenticationSettings({
    required this.allowFlashCall,
    required this.allowMissedCall,
    required this.isCurrentPhoneNumber,
    required this.hasUnknownPhoneNumber,
    required this.allowSmsRetrieverApi,
    this.firebaseAuthenticationSettings,
    required this.authenticationTokens,
  });

  /// [allowFlashCall] Pass true if the authentication code may be sent via a flash call to the specified phone number
  final bool allowFlashCall;

  /// [allowMissedCall] Pass true if the authentication code may be sent via a missed call to the specified phone number
  final bool allowMissedCall;

  /// [isCurrentPhoneNumber] Pass true if the authenticated phone number is used on the current device
  final bool isCurrentPhoneNumber;

  /// [hasUnknownPhoneNumber] Pass true if there is a SIM card in the current device, but it is not possible to check whether phone number matches
  final bool hasUnknownPhoneNumber;

  /// [allowSmsRetrieverApi] For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services
  final bool allowSmsRetrieverApi;

  /// [firebaseAuthenticationSettings] For official Android and iOS applications only; pass null otherwise. Settings for Firebase Authentication
  final FirebaseAuthenticationSettings? firebaseAuthenticationSettings;

  /// [authenticationTokens] List of up to 20 authentication tokens, recently received in updateOption("authentication_token") in previously logged out sessions; for setAuthenticationPhoneNumber only
  final List<String> authenticationTokens;

  factory PhoneNumberAuthenticationSettings.fromJson(
          Map<String, dynamic> json) =>
      PhoneNumberAuthenticationSettings(
        allowFlashCall: json['allow_flash_call'] ?? false,
        allowMissedCall: json['allow_missed_call'] ?? false,
        isCurrentPhoneNumber: json['is_current_phone_number'] ?? false,
        hasUnknownPhoneNumber: json['has_unknown_phone_number'] ?? false,
        allowSmsRetrieverApi: json['allow_sms_retriever_api'] ?? false,
        firebaseAuthenticationSettings: FirebaseAuthenticationSettings.fromJson(
            json['firebase_authentication_settings'] ?? {}),
        authenticationTokens: json['authentication_tokens'] == null
            ? <String>[]
            : (json['authentication_tokens'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "allow_flash_call": allowFlashCall,
      "allow_missed_call": allowMissedCall,
      "is_current_phone_number": isCurrentPhoneNumber,
      "has_unknown_phone_number": hasUnknownPhoneNumber,
      "allow_sms_retriever_api": allowSmsRetrieverApi,
      "firebase_authentication_settings":
          firebaseAuthenticationSettings?.toJson(),
      "authentication_tokens": authenticationTokens,
    };
  }

  PhoneNumberAuthenticationSettings copyWith({
    bool? allowFlashCall,
    bool? allowMissedCall,
    bool? isCurrentPhoneNumber,
    bool? hasUnknownPhoneNumber,
    bool? allowSmsRetrieverApi,
    FirebaseAuthenticationSettings? firebaseAuthenticationSettings,
    List<String>? authenticationTokens,
  }) {
    return PhoneNumberAuthenticationSettings(
      allowFlashCall: allowFlashCall ?? this.allowFlashCall,
      allowMissedCall: allowMissedCall ?? this.allowMissedCall,
      isCurrentPhoneNumber: isCurrentPhoneNumber ?? this.isCurrentPhoneNumber,
      hasUnknownPhoneNumber:
          hasUnknownPhoneNumber ?? this.hasUnknownPhoneNumber,
      allowSmsRetrieverApi: allowSmsRetrieverApi ?? this.allowSmsRetrieverApi,
      firebaseAuthenticationSettings:
          firebaseAuthenticationSettings ?? this.firebaseAuthenticationSettings,
      authenticationTokens: authenticationTokens ?? this.authenticationTokens,
    );
  }

  static const CONSTRUCTOR = 'phoneNumberAuthenticationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
