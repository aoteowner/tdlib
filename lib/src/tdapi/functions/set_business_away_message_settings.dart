import '../tdapi.dart';

class SetBusinessAwayMessageSettings extends TdFunction {
  /// Changes the business away message settings of the current user. Requires Telegram Business subscription
  const SetBusinessAwayMessageSettings({
    this.awayMessageSettings,
  });

  /// [awayMessageSettings] The new settings for the away message of the business; pass null to disable the away message
  final BusinessAwayMessageSettings? awayMessageSettings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "away_message_settings": awayMessageSettings?.toJson(),
      "@extra": extra,
    };
  }

  SetBusinessAwayMessageSettings copyWith({
    BusinessAwayMessageSettings? awayMessageSettings,
  }) {
    return SetBusinessAwayMessageSettings(
      awayMessageSettings: awayMessageSettings ?? this.awayMessageSettings,
    );
  }

  static const CONSTRUCTOR = 'setBusinessAwayMessageSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
