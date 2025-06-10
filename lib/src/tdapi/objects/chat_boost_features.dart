part of '../tdapi.dart';

class ChatBoostFeatures extends TdObject {

  /// Contains a list of features available on the first chat boost levels
  const ChatBoostFeatures({
    required this.features,
    required this.minProfileBackgroundCustomEmojiBoostLevel,
    required this.minBackgroundCustomEmojiBoostLevel,
    required this.minEmojiStatusBoostLevel,
    required this.minChatThemeBackgroundBoostLevel,
    required this.minCustomBackgroundBoostLevel,
    required this.minCustomEmojiStickerSetBoostLevel,
    required this.minAutomaticTranslationBoostLevel,
    required this.minSpeechRecognitionBoostLevel,
    required this.minSponsoredMessageDisableBoostLevel,
    this.extra,
    this.clientId,
  });
  
  /// [features] The list of features
  final List<ChatBoostLevelFeatures> features;

  /// [minProfileBackgroundCustomEmojiBoostLevel] The minimum boost level required to set custom emoji for profile background
  final int minProfileBackgroundCustomEmojiBoostLevel;

  /// [minBackgroundCustomEmojiBoostLevel] The minimum boost level required to set custom emoji for reply header and link preview background; for channel chats only
  final int minBackgroundCustomEmojiBoostLevel;

  /// [minEmojiStatusBoostLevel] The minimum boost level required to set emoji status
  final int minEmojiStatusBoostLevel;

  /// [minChatThemeBackgroundBoostLevel] The minimum boost level required to set a chat theme background as chat background
  final int minChatThemeBackgroundBoostLevel;

  /// [minCustomBackgroundBoostLevel] The minimum boost level required to set custom chat background
  final int minCustomBackgroundBoostLevel;

  /// [minCustomEmojiStickerSetBoostLevel] The minimum boost level required to set custom emoji sticker set for the chat; for supergroup chats only
  final int minCustomEmojiStickerSetBoostLevel;

  /// [minAutomaticTranslationBoostLevel] The minimum boost level allowing to enable automatic translation of messages for non-Premium users; for channel chats only
  final int minAutomaticTranslationBoostLevel;

  /// [minSpeechRecognitionBoostLevel] The minimum boost level allowing to recognize speech in video note and voice note messages for non-Premium users; for supergroup chats only
  final int minSpeechRecognitionBoostLevel;

  /// [minSponsoredMessageDisableBoostLevel] The minimum boost level allowing to disable sponsored messages in the chat; for channel chats only
  final int minSponsoredMessageDisableBoostLevel;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatBoostFeatures.fromJson(Map<String, dynamic> json) => ChatBoostFeatures(
    features: List<ChatBoostLevelFeatures>.from((json['features'] ?? []).map((item) => ChatBoostLevelFeatures.fromJson(item)).toList()),
    minProfileBackgroundCustomEmojiBoostLevel: json['min_profile_background_custom_emoji_boost_level'],
    minBackgroundCustomEmojiBoostLevel: json['min_background_custom_emoji_boost_level'],
    minEmojiStatusBoostLevel: json['min_emoji_status_boost_level'],
    minChatThemeBackgroundBoostLevel: json['min_chat_theme_background_boost_level'],
    minCustomBackgroundBoostLevel: json['min_custom_background_boost_level'],
    minCustomEmojiStickerSetBoostLevel: json['min_custom_emoji_sticker_set_boost_level'],
    minAutomaticTranslationBoostLevel: json['min_automatic_translation_boost_level'],
    minSpeechRecognitionBoostLevel: json['min_speech_recognition_boost_level'],
    minSponsoredMessageDisableBoostLevel: json['min_sponsored_message_disable_boost_level'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "features": features.map((i) => i.toJson()).toList(),
      "min_profile_background_custom_emoji_boost_level": minProfileBackgroundCustomEmojiBoostLevel,
      "min_background_custom_emoji_boost_level": minBackgroundCustomEmojiBoostLevel,
      "min_emoji_status_boost_level": minEmojiStatusBoostLevel,
      "min_chat_theme_background_boost_level": minChatThemeBackgroundBoostLevel,
      "min_custom_background_boost_level": minCustomBackgroundBoostLevel,
      "min_custom_emoji_sticker_set_boost_level": minCustomEmojiStickerSetBoostLevel,
      "min_automatic_translation_boost_level": minAutomaticTranslationBoostLevel,
      "min_speech_recognition_boost_level": minSpeechRecognitionBoostLevel,
      "min_sponsored_message_disable_boost_level": minSponsoredMessageDisableBoostLevel,
    };
  }
  
  ChatBoostFeatures copyWith({
    List<ChatBoostLevelFeatures>? features,
    int? minProfileBackgroundCustomEmojiBoostLevel,
    int? minBackgroundCustomEmojiBoostLevel,
    int? minEmojiStatusBoostLevel,
    int? minChatThemeBackgroundBoostLevel,
    int? minCustomBackgroundBoostLevel,
    int? minCustomEmojiStickerSetBoostLevel,
    int? minAutomaticTranslationBoostLevel,
    int? minSpeechRecognitionBoostLevel,
    int? minSponsoredMessageDisableBoostLevel,
    dynamic extra,
    int? clientId,
  }) => ChatBoostFeatures(
    features: features ?? this.features,
    minProfileBackgroundCustomEmojiBoostLevel: minProfileBackgroundCustomEmojiBoostLevel ?? this.minProfileBackgroundCustomEmojiBoostLevel,
    minBackgroundCustomEmojiBoostLevel: minBackgroundCustomEmojiBoostLevel ?? this.minBackgroundCustomEmojiBoostLevel,
    minEmojiStatusBoostLevel: minEmojiStatusBoostLevel ?? this.minEmojiStatusBoostLevel,
    minChatThemeBackgroundBoostLevel: minChatThemeBackgroundBoostLevel ?? this.minChatThemeBackgroundBoostLevel,
    minCustomBackgroundBoostLevel: minCustomBackgroundBoostLevel ?? this.minCustomBackgroundBoostLevel,
    minCustomEmojiStickerSetBoostLevel: minCustomEmojiStickerSetBoostLevel ?? this.minCustomEmojiStickerSetBoostLevel,
    minAutomaticTranslationBoostLevel: minAutomaticTranslationBoostLevel ?? this.minAutomaticTranslationBoostLevel,
    minSpeechRecognitionBoostLevel: minSpeechRecognitionBoostLevel ?? this.minSpeechRecognitionBoostLevel,
    minSponsoredMessageDisableBoostLevel: minSponsoredMessageDisableBoostLevel ?? this.minSponsoredMessageDisableBoostLevel,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatBoostFeatures';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
