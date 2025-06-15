import '../tdapi.dart';

class SendPhoneNumberCode extends TdFunction {
  /// Sends a code to the specified phone number. Aborts previous phone number verification if there was one. On success, returns information about the sent code
  const SendPhoneNumberCode({
    required this.phoneNumber,
    this.settings,
    required this.type,
  });

  /// [phoneNumber] The phone number, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  /// [type] Type of the request for which the code is sent
  final PhoneNumberCodeType type;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "settings": settings?.toJson(),
      "type": type.toJson(),
      "@extra": extra,
    };
  }

  SendPhoneNumberCode copyWith({
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
    PhoneNumberCodeType? type,
  }) {
    return SendPhoneNumberCode(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      settings: settings ?? this.settings,
      type: type ?? this.type,
    );
  }

  static const CONSTRUCTOR = 'sendPhoneNumberCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
