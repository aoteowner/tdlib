import '../tdapi.dart';

class ActivateStoryStealthMode extends TdFunction {

  /// Activates stealth mode for stories, which hides all views of stories from the current user in the last "story_stealth_mode_past_period" seconds. and for the next "story_stealth_mode_future_period" seconds; for Telegram Premium users only
  const ActivateStoryStealthMode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ActivateStoryStealthMode copyWith() => const ActivateStoryStealthMode();

  static const CONSTRUCTOR = 'activateStoryStealthMode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
