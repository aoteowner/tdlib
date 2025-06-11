import '../tdapi.dart';

class HideContactCloseBirthdays extends TdFunction {

  /// Hides the list of contacts that have close birthdays for 24 hours
  const HideContactCloseBirthdays();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  HideContactCloseBirthdays copyWith() => const HideContactCloseBirthdays();

  static const CONSTRUCTOR = 'hideContactCloseBirthdays';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
