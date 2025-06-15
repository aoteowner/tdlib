import '../tdapi.dart';

class ChatBoostLevelFeatures extends TdObject {
  /// Contains a list of features available on a specific chat boost level
  const ChatBoostLevelFeatures({
    required this.level,
    required this.storyPerDayCount,
    required this.customEmojiReactionCount,
    required this.titleColorCount,
    required this.profileAccentColorCount,
    required this.canSetProfileBackgroundCustomEmoji,
    required this.accentColorCount,
    required this.canSetBackgroundCustomEmoji,
    required this.canSetEmojiStatus,
    required this.chatThemeBackgroundCount,
    required this.canSetCustomBackground,
    required this.canSetCustomEmojiStickerSet,
    required this.canEnableAutomaticTranslation,
    required this.canRecognizeSpeech,
    required this.canDisableSponsoredMessages,
    this.extra,
    this.clientId,
  });

  /// [level] Target chat boost level
  final int level;

  /// [storyPerDayCount] Number of stories that the chat can publish daily
  final int storyPerDayCount;

  /// [customEmojiReactionCount] Number of custom emoji reactions that can be added to the list of available reactions
  final int customEmojiReactionCount;

  /// [titleColorCount] Number of custom colors for chat title
  final int titleColorCount;

  /// [profileAccentColorCount] Number of custom colors for profile photo background
  final int profileAccentColorCount;

  /// [canSetProfileBackgroundCustomEmoji] True, if custom emoji for profile background can be set
  final bool canSetProfileBackgroundCustomEmoji;

  /// [accentColorCount] Number of custom colors for background of empty chat photo, replies to messages and link previews
  final int accentColorCount;

  /// [canSetBackgroundCustomEmoji] True, if custom emoji for reply header and link preview background can be set
  final bool canSetBackgroundCustomEmoji;

  /// [canSetEmojiStatus] True, if emoji status can be set
  final bool canSetEmojiStatus;

  /// [chatThemeBackgroundCount] Number of chat theme backgrounds that can be set as chat background
  final int chatThemeBackgroundCount;

  /// [canSetCustomBackground] True, if custom background can be set in the chat for all users
  final bool canSetCustomBackground;

  /// [canSetCustomEmojiStickerSet] True, if custom emoji sticker set can be set for the chat
  final bool canSetCustomEmojiStickerSet;

  /// [canEnableAutomaticTranslation] True, if automatic translation of messages can be enabled in the chat
  final bool canEnableAutomaticTranslation;

  /// [canRecognizeSpeech] True, if speech recognition can be used for video note and voice note messages by all users
  final bool canRecognizeSpeech;

  /// [canDisableSponsoredMessages] True, if sponsored messages can be disabled in the chat
  final bool canDisableSponsoredMessages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatBoostLevelFeatures.fromJson(Map<String, dynamic> json) =>
      ChatBoostLevelFeatures(
        level: json['level'] ?? 0,
        storyPerDayCount: json['story_per_day_count'] ?? 0,
        customEmojiReactionCount: json['custom_emoji_reaction_count'] ?? 0,
        titleColorCount: json['title_color_count'] ?? 0,
        profileAccentColorCount: json['profile_accent_color_count'] ?? 0,
        canSetProfileBackgroundCustomEmoji:
            json['can_set_profile_background_custom_emoji'] ?? false,
        accentColorCount: json['accent_color_count'] ?? 0,
        canSetBackgroundCustomEmoji:
            json['can_set_background_custom_emoji'] ?? false,
        canSetEmojiStatus: json['can_set_emoji_status'] ?? false,
        chatThemeBackgroundCount: json['chat_theme_background_count'] ?? 0,
        canSetCustomBackground: json['can_set_custom_background'] ?? false,
        canSetCustomEmojiStickerSet:
            json['can_set_custom_emoji_sticker_set'] ?? false,
        canEnableAutomaticTranslation:
            json['can_enable_automatic_translation'] ?? false,
        canRecognizeSpeech: json['can_recognize_speech'] ?? false,
        canDisableSponsoredMessages:
            json['can_disable_sponsored_messages'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "level": level,
      "story_per_day_count": storyPerDayCount,
      "custom_emoji_reaction_count": customEmojiReactionCount,
      "title_color_count": titleColorCount,
      "profile_accent_color_count": profileAccentColorCount,
      "can_set_profile_background_custom_emoji":
          canSetProfileBackgroundCustomEmoji,
      "accent_color_count": accentColorCount,
      "can_set_background_custom_emoji": canSetBackgroundCustomEmoji,
      "can_set_emoji_status": canSetEmojiStatus,
      "chat_theme_background_count": chatThemeBackgroundCount,
      "can_set_custom_background": canSetCustomBackground,
      "can_set_custom_emoji_sticker_set": canSetCustomEmojiStickerSet,
      "can_enable_automatic_translation": canEnableAutomaticTranslation,
      "can_recognize_speech": canRecognizeSpeech,
      "can_disable_sponsored_messages": canDisableSponsoredMessages,
    };
  }

  ChatBoostLevelFeatures copyWith({
    int? level,
    int? storyPerDayCount,
    int? customEmojiReactionCount,
    int? titleColorCount,
    int? profileAccentColorCount,
    bool? canSetProfileBackgroundCustomEmoji,
    int? accentColorCount,
    bool? canSetBackgroundCustomEmoji,
    bool? canSetEmojiStatus,
    int? chatThemeBackgroundCount,
    bool? canSetCustomBackground,
    bool? canSetCustomEmojiStickerSet,
    bool? canEnableAutomaticTranslation,
    bool? canRecognizeSpeech,
    bool? canDisableSponsoredMessages,
    dynamic extra,
    int? clientId,
  }) {
    return ChatBoostLevelFeatures(
      level: level ?? this.level,
      storyPerDayCount: storyPerDayCount ?? this.storyPerDayCount,
      customEmojiReactionCount:
          customEmojiReactionCount ?? this.customEmojiReactionCount,
      titleColorCount: titleColorCount ?? this.titleColorCount,
      profileAccentColorCount:
          profileAccentColorCount ?? this.profileAccentColorCount,
      canSetProfileBackgroundCustomEmoji: canSetProfileBackgroundCustomEmoji ??
          this.canSetProfileBackgroundCustomEmoji,
      accentColorCount: accentColorCount ?? this.accentColorCount,
      canSetBackgroundCustomEmoji:
          canSetBackgroundCustomEmoji ?? this.canSetBackgroundCustomEmoji,
      canSetEmojiStatus: canSetEmojiStatus ?? this.canSetEmojiStatus,
      chatThemeBackgroundCount:
          chatThemeBackgroundCount ?? this.chatThemeBackgroundCount,
      canSetCustomBackground:
          canSetCustomBackground ?? this.canSetCustomBackground,
      canSetCustomEmojiStickerSet:
          canSetCustomEmojiStickerSet ?? this.canSetCustomEmojiStickerSet,
      canEnableAutomaticTranslation:
          canEnableAutomaticTranslation ?? this.canEnableAutomaticTranslation,
      canRecognizeSpeech: canRecognizeSpeech ?? this.canRecognizeSpeech,
      canDisableSponsoredMessages:
          canDisableSponsoredMessages ?? this.canDisableSponsoredMessages,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatBoostLevelFeatures';

  @override
  String getConstructor() => CONSTRUCTOR;
}
