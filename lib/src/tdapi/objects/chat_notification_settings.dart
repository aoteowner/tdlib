import '../tdapi.dart';

class ChatNotificationSettings extends TdObject {
  /// Contains information about notification settings for a chat or a forum topic
  const ChatNotificationSettings({
    required this.useDefaultMuteFor,
    required this.muteFor,
    required this.useDefaultSound,
    required this.soundId,
    required this.useDefaultShowPreview,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.useDefaultStorySound,
    required this.storySoundId,
    required this.useDefaultShowStoryPoster,
    required this.showStoryPoster,
    required this.useDefaultDisablePinnedMessageNotifications,
    required this.disablePinnedMessageNotifications,
    required this.useDefaultDisableMentionNotifications,
    required this.disableMentionNotifications,
  });

  /// [useDefaultMuteFor] If true, the value for the relevant type of chat or the forum chat is used instead of mute_for
  final bool useDefaultMuteFor;

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [useDefaultSound] If true, the value for the relevant type of chat or the forum chat is used instead of sound_id
  final bool useDefaultSound;

  /// [soundId] Identifier of the notification sound to be played for messages; 0 if sound is disabled
  final int soundId;

  /// [useDefaultShowPreview] If true, the value for the relevant type of chat or the forum chat is used instead of show_preview
  final bool useDefaultShowPreview;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultMuteStories] If true, the value for the relevant type of chat is used instead of mute_stories
  final bool useDefaultMuteStories;

  /// [muteStories] True, if story notifications are disabled for the chat
  final bool muteStories;

  /// [useDefaultStorySound] If true, the value for the relevant type of chat is used instead of story_sound_id
  final bool useDefaultStorySound;

  /// [storySoundId] Identifier of the notification sound to be played for stories; 0 if sound is disabled
  final int storySoundId;

  /// [useDefaultShowStoryPoster] If true, the value for the relevant type of chat is used instead of show_story_poster
  final bool useDefaultShowStoryPoster;

  /// [showStoryPoster] True, if the chat that posted a story must be displayed in notifications
  final bool showStoryPoster;

  /// [useDefaultDisablePinnedMessageNotifications] If true, the value for the relevant type of chat or the forum chat is used instead of disable_pinned_message_notifications
  final bool useDefaultDisablePinnedMessageNotifications;

  /// [disablePinnedMessageNotifications] If true, notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [useDefaultDisableMentionNotifications] If true, the value for the relevant type of chat or the forum chat is used instead of disable_mention_notifications
  final bool useDefaultDisableMentionNotifications;

  /// [disableMentionNotifications] If true, notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  factory ChatNotificationSettings.fromJson(Map<String, dynamic> json) =>
      ChatNotificationSettings(
        useDefaultMuteFor: json['use_default_mute_for'] ?? false,
        muteFor: json['mute_for'] ?? 0,
        useDefaultSound: json['use_default_sound'] ?? false,
        soundId: int.tryParse(json['sound_id'] ?? '') ?? 0,
        useDefaultShowPreview: json['use_default_show_preview'] ?? false,
        showPreview: json['show_preview'] ?? false,
        useDefaultMuteStories: json['use_default_mute_stories'] ?? false,
        muteStories: json['mute_stories'] ?? false,
        useDefaultStorySound: json['use_default_story_sound'] ?? false,
        storySoundId: int.tryParse(json['story_sound_id'] ?? '') ?? 0,
        useDefaultShowStoryPoster:
            json['use_default_show_story_poster'] ?? false,
        showStoryPoster: json['show_story_poster'] ?? false,
        useDefaultDisablePinnedMessageNotifications:
            json['use_default_disable_pinned_message_notifications'] ?? false,
        disablePinnedMessageNotifications:
            json['disable_pinned_message_notifications'] ?? false,
        useDefaultDisableMentionNotifications:
            json['use_default_disable_mention_notifications'] ?? false,
        disableMentionNotifications:
            json['disable_mention_notifications'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "use_default_mute_for": useDefaultMuteFor,
      "mute_for": muteFor,
      "use_default_sound": useDefaultSound,
      "sound_id": soundId,
      "use_default_show_preview": useDefaultShowPreview,
      "show_preview": showPreview,
      "use_default_mute_stories": useDefaultMuteStories,
      "mute_stories": muteStories,
      "use_default_story_sound": useDefaultStorySound,
      "story_sound_id": storySoundId,
      "use_default_show_story_poster": useDefaultShowStoryPoster,
      "show_story_poster": showStoryPoster,
      "use_default_disable_pinned_message_notifications":
          useDefaultDisablePinnedMessageNotifications,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "use_default_disable_mention_notifications":
          useDefaultDisableMentionNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }

  ChatNotificationSettings copyWith({
    bool? useDefaultMuteFor,
    int? muteFor,
    bool? useDefaultSound,
    int? soundId,
    bool? useDefaultShowPreview,
    bool? showPreview,
    bool? useDefaultMuteStories,
    bool? muteStories,
    bool? useDefaultStorySound,
    int? storySoundId,
    bool? useDefaultShowStoryPoster,
    bool? showStoryPoster,
    bool? useDefaultDisablePinnedMessageNotifications,
    bool? disablePinnedMessageNotifications,
    bool? useDefaultDisableMentionNotifications,
    bool? disableMentionNotifications,
  }) {
    return ChatNotificationSettings(
      useDefaultMuteFor: useDefaultMuteFor ?? this.useDefaultMuteFor,
      muteFor: muteFor ?? this.muteFor,
      useDefaultSound: useDefaultSound ?? this.useDefaultSound,
      soundId: soundId ?? this.soundId,
      useDefaultShowPreview:
          useDefaultShowPreview ?? this.useDefaultShowPreview,
      showPreview: showPreview ?? this.showPreview,
      useDefaultMuteStories:
          useDefaultMuteStories ?? this.useDefaultMuteStories,
      muteStories: muteStories ?? this.muteStories,
      useDefaultStorySound: useDefaultStorySound ?? this.useDefaultStorySound,
      storySoundId: storySoundId ?? this.storySoundId,
      useDefaultShowStoryPoster:
          useDefaultShowStoryPoster ?? this.useDefaultShowStoryPoster,
      showStoryPoster: showStoryPoster ?? this.showStoryPoster,
      useDefaultDisablePinnedMessageNotifications:
          useDefaultDisablePinnedMessageNotifications ??
              this.useDefaultDisablePinnedMessageNotifications,
      disablePinnedMessageNotifications: disablePinnedMessageNotifications ??
          this.disablePinnedMessageNotifications,
      useDefaultDisableMentionNotifications:
          useDefaultDisableMentionNotifications ??
              this.useDefaultDisableMentionNotifications,
      disableMentionNotifications:
          disableMentionNotifications ?? this.disableMentionNotifications,
    );
  }

  static const CONSTRUCTOR = 'chatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
