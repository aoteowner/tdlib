import '../tdapi.dart';

class ScopeNotificationSettings extends TdObject {
  /// Contains information about notification settings for several chats
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.soundId,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.storySoundId,
    required this.showStoryPoster,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
    this.extra,
    this.clientId,
  });

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is disabled
  final int soundId;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultMuteStories] If true, story notifications are received only for the first 5 chats from topChatCategoryUsers regardless of the value of mute_stories
  final bool useDefaultMuteStories;

  /// [muteStories] True, if story notifications are disabled
  final bool muteStories;

  /// [storySoundId] Identifier of the notification sound to be played for stories; 0 if sound is disabled
  final int storySoundId;

  /// [showStoryPoster] True, if the chat that posted a story must be displayed in notifications
  final bool showStoryPoster;

  /// [disablePinnedMessageNotifications] True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [disableMentionNotifications] True, if notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ScopeNotificationSettings.fromJson(Map<String, dynamic> json) =>
      ScopeNotificationSettings(
        muteFor: json['mute_for'] ?? 0,
        soundId: int.tryParse(json['sound_id'] ?? '') ?? 0,
        showPreview: json['show_preview'] ?? false,
        useDefaultMuteStories: json['use_default_mute_stories'] ?? false,
        muteStories: json['mute_stories'] ?? false,
        storySoundId: int.tryParse(json['story_sound_id'] ?? '') ?? 0,
        showStoryPoster: json['show_story_poster'] ?? false,
        disablePinnedMessageNotifications:
            json['disable_pinned_message_notifications'] ?? false,
        disableMentionNotifications:
            json['disable_mention_notifications'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mute_for": muteFor,
      "sound_id": soundId,
      "show_preview": showPreview,
      "use_default_mute_stories": useDefaultMuteStories,
      "mute_stories": muteStories,
      "story_sound_id": storySoundId,
      "show_story_poster": showStoryPoster,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }

  ScopeNotificationSettings copyWith({
    int? muteFor,
    int? soundId,
    bool? showPreview,
    bool? useDefaultMuteStories,
    bool? muteStories,
    int? storySoundId,
    bool? showStoryPoster,
    bool? disablePinnedMessageNotifications,
    bool? disableMentionNotifications,
    dynamic extra,
    int? clientId,
  }) {
    return ScopeNotificationSettings(
      muteFor: muteFor ?? this.muteFor,
      soundId: soundId ?? this.soundId,
      showPreview: showPreview ?? this.showPreview,
      useDefaultMuteStories:
          useDefaultMuteStories ?? this.useDefaultMuteStories,
      muteStories: muteStories ?? this.muteStories,
      storySoundId: storySoundId ?? this.storySoundId,
      showStoryPoster: showStoryPoster ?? this.showStoryPoster,
      disablePinnedMessageNotifications: disablePinnedMessageNotifications ??
          this.disablePinnedMessageNotifications,
      disableMentionNotifications:
          disableMentionNotifications ?? this.disableMentionNotifications,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'scopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
