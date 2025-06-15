import '../tdapi.dart';

class SetChatProfileAccentColor extends TdFunction {
  /// Changes accent color and background custom emoji for profile of a supergroup or channel chat. Requires can_change_info administrator right
  const SetChatProfileAccentColor({
    required this.chatId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [profileAccentColorId] Identifier of the accent color to use for profile; pass -1 if none. The chat must have at least profileAccentColor.min_supergroup_chat_boost_level for supergroups. or profileAccentColor.min_channel_chat_boost_level for channels boost level to pass the corresponding color
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown on the chat's profile photo background; 0 if none. Use chatBoostLevelFeatures.can_set_profile_background_custom_emoji to check whether a custom emoji can be set
  final int profileBackgroundCustomEmojiId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "profile_accent_color_id": profileAccentColorId,
      "profile_background_custom_emoji_id": profileBackgroundCustomEmojiId,
      "@extra": extra,
    };
  }

  SetChatProfileAccentColor copyWith({
    int? chatId,
    int? profileAccentColorId,
    int? profileBackgroundCustomEmojiId,
  }) {
    return SetChatProfileAccentColor(
      chatId: chatId ?? this.chatId,
      profileAccentColorId: profileAccentColorId ?? this.profileAccentColorId,
      profileBackgroundCustomEmojiId:
          profileBackgroundCustomEmojiId ?? this.profileBackgroundCustomEmojiId,
    );
  }

  static const CONSTRUCTOR = 'setChatProfileAccentColor';

  @override
  String getConstructor() => CONSTRUCTOR;
}
