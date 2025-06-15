import '../tdapi.dart';

class ResendEmailAddressVerificationCode extends TdFunction {
  /// Resends the code to verify an email address to be added to a user's Telegram Passport
  const ResendEmailAddressVerificationCode();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ResendEmailAddressVerificationCode copyWith() {
    return const ResendEmailAddressVerificationCode();
  }

  static const CONSTRUCTOR = 'resendEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
