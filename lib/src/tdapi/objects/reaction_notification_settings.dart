import '../tdapi.dart';

class ReactionNotificationSettings extends TdObject {
  /// Contains information about notification settings for reactions
  const ReactionNotificationSettings({
    required this.messageReactionSource,
    required this.storyReactionSource,
    required this.soundId,
    required this.showPreview,
  });

  /// [messageReactionSource] Source of message reactions for which notifications are shown
  final ReactionNotificationSource messageReactionSource;

  /// [storyReactionSource] Source of story reactions for which notifications are shown
  final ReactionNotificationSource storyReactionSource;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is disabled
  final int soundId;

  /// [showPreview] True, if reaction sender and emoji must be displayed in notifications
  final bool showPreview;

  factory ReactionNotificationSettings.fromJson(Map<String, dynamic> json) =>
      ReactionNotificationSettings(
        messageReactionSource: ReactionNotificationSource.fromJson(
            json['message_reaction_source'] ?? {}),
        storyReactionSource: ReactionNotificationSource.fromJson(
            json['story_reaction_source'] ?? {}),
        soundId: int.tryParse(json['sound_id'] ?? '') ?? 0,
        showPreview: json['show_preview'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_reaction_source": messageReactionSource.toJson(),
      "story_reaction_source": storyReactionSource.toJson(),
      "sound_id": soundId,
      "show_preview": showPreview,
    };
  }

  ReactionNotificationSettings copyWith({
    ReactionNotificationSource? messageReactionSource,
    ReactionNotificationSource? storyReactionSource,
    int? soundId,
    bool? showPreview,
  }) {
    return ReactionNotificationSettings(
      messageReactionSource:
          messageReactionSource ?? this.messageReactionSource,
      storyReactionSource: storyReactionSource ?? this.storyReactionSource,
      soundId: soundId ?? this.soundId,
      showPreview: showPreview ?? this.showPreview,
    );
  }

  static const CONSTRUCTOR = 'reactionNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
