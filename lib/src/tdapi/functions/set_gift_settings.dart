import '../tdapi.dart';

class SetGiftSettings extends TdFunction {

  /// Changes settings for gift receiving for the current user
  const SetGiftSettings({
    required this.settings,
  });
  
  /// [settings] The new settings
  final GiftSettings settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "settings": settings.toJson(),
      "@extra": extra,
    };
  }
  
  SetGiftSettings copyWith({
    GiftSettings? settings,
  }) => SetGiftSettings(
    settings: settings ?? this.settings,
  );

  static const CONSTRUCTOR = 'setGiftSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
