import '../tdapi.dart';

class SetStoryPrivacySettings extends TdFunction {
  /// Changes privacy settings of a story. The method can be called only for stories posted on behalf of the current user and if story.can_be_edited == true
  const SetStoryPrivacySettings({
    required this.storyId,
    required this.privacySettings,
  });

  /// [storyId] Identifier of the story
  final int storyId;

  /// [privacySettings] The new privacy settings for the story
  final StoryPrivacySettings privacySettings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "privacy_settings": privacySettings.toJson(),
      "@extra": extra,
    };
  }

  SetStoryPrivacySettings copyWith({
    int? storyId,
    StoryPrivacySettings? privacySettings,
  }) {
    return SetStoryPrivacySettings(
      storyId: storyId ?? this.storyId,
      privacySettings: privacySettings ?? this.privacySettings,
    );
  }

  static const CONSTRUCTOR = 'setStoryPrivacySettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
