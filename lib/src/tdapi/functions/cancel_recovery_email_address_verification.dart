import '../tdapi.dart';

class CancelRecoveryEmailAddressVerification extends TdFunction {
  /// Cancels verification of the 2-step verification recovery email address
  const CancelRecoveryEmailAddressVerification();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  CancelRecoveryEmailAddressVerification copyWith() {
    return const CancelRecoveryEmailAddressVerification();
  }

  static const CONSTRUCTOR = 'cancelRecoveryEmailAddressVerification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
