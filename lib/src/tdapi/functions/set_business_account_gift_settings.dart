import '../tdapi.dart';

class SetBusinessAccountGiftSettings extends TdFunction {
  /// Changes settings for gift receiving of a business account; for bots only
  const SetBusinessAccountGiftSettings({
    required this.businessConnectionId,
    required this.settings,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [settings] The new settings
  final GiftSettings settings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "settings": settings.toJson(),
      "@extra": extra,
    };
  }

  SetBusinessAccountGiftSettings copyWith({
    String? businessConnectionId,
    GiftSettings? settings,
  }) {
    return SetBusinessAccountGiftSettings(
      businessConnectionId: businessConnectionId ?? this.businessConnectionId,
      settings: settings ?? this.settings,
    );
  }

  static const CONSTRUCTOR = 'setBusinessAccountGiftSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
