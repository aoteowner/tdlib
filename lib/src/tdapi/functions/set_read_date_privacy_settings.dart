import '../tdapi.dart';

class SetReadDatePrivacySettings extends TdFunction {

  /// Changes privacy settings for message read date
  const SetReadDatePrivacySettings({
    required this.settings,
  });
  
  /// [settings] New settings
  final ReadDatePrivacySettings settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "settings": settings.toJson(),
      "@extra": extra,
    };
  }
  
  SetReadDatePrivacySettings copyWith({
    ReadDatePrivacySettings? settings,
  }) => SetReadDatePrivacySettings(
    settings: settings ?? this.settings,
  );

  static const CONSTRUCTOR = 'setReadDatePrivacySettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
