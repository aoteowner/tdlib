import '../tdapi.dart';

class GetStoryNotificationSettingsExceptions extends TdFunction {
  /// Returns the list of chats with non-default notification settings for stories
  const GetStoryNotificationSettingsExceptions();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetStoryNotificationSettingsExceptions copyWith() {
    return const GetStoryNotificationSettingsExceptions();
  }

  static const CONSTRUCTOR = 'getStoryNotificationSettingsExceptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
