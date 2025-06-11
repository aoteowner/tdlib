import '../tdapi.dart';

class GetReadDatePrivacySettings extends TdFunction {

  /// Returns privacy settings for message read date
  const GetReadDatePrivacySettings();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetReadDatePrivacySettings copyWith() => const GetReadDatePrivacySettings();

  static const CONSTRUCTOR = 'getReadDatePrivacySettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
