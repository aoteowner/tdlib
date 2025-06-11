import '../tdapi.dart';

class SetProfileAccentColor extends TdFunction {

  /// Changes accent color and background custom emoji for profile of the current user; for Telegram Premium users only
  const SetProfileAccentColor({
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });
  
  /// [profileAccentColorId] Identifier of the accent color to use for profile; pass -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown on the user's profile photo background; 0 if none
  final int profileBackgroundCustomEmojiId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "profile_accent_color_id": profileAccentColorId,
      "profile_background_custom_emoji_id": profileBackgroundCustomEmojiId,
      "@extra": extra,
    };
  }
  
  SetProfileAccentColor copyWith({
    int? profileAccentColorId,
    int? profileBackgroundCustomEmojiId,
  }) => SetProfileAccentColor(
    profileAccentColorId: profileAccentColorId ?? this.profileAccentColorId,
    profileBackgroundCustomEmojiId: profileBackgroundCustomEmojiId ?? this.profileBackgroundCustomEmojiId,
  );

  static const CONSTRUCTOR = 'setProfileAccentColor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
