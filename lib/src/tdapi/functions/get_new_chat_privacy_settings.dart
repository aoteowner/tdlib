part of '../tdapi.dart';

class GetNewChatPrivacySettings extends TdFunction {

  /// Returns privacy settings for new chat creation
  const GetNewChatPrivacySettings();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetNewChatPrivacySettings copyWith() => const GetNewChatPrivacySettings();

  static const CONSTRUCTOR = 'getNewChatPrivacySettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
