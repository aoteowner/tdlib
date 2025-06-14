import '../tdapi.dart';

class ResendLoginEmailAddressCode extends TdFunction {
  /// Resends the login email address verification code
  const ResendLoginEmailAddressCode();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ResendLoginEmailAddressCode copyWith() {
    return const ResendLoginEmailAddressCode();
  }

  static const CONSTRUCTOR = 'resendLoginEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
