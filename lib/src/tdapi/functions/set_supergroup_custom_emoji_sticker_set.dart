import '../tdapi.dart';

class SetSupergroupCustomEmojiStickerSet extends TdFunction {

  /// Changes the custom emoji sticker set of a supergroup; requires can_change_info administrator right. The chat must have at least chatBoostFeatures.min_custom_emoji_sticker_set_boost_level boost level to pass the corresponding color
  const SetSupergroupCustomEmojiStickerSet({
    required this.supergroupId,
    required this.customEmojiStickerSetId,
  });
  
  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [customEmojiStickerSetId] New value of the custom emoji sticker set identifier for the supergroup. Use 0 to remove the custom emoji sticker set in the supergroup
  final int customEmojiStickerSetId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "custom_emoji_sticker_set_id": customEmojiStickerSetId,
      "@extra": extra,
    };
  }
  
  SetSupergroupCustomEmojiStickerSet copyWith({
    int? supergroupId,
    int? customEmojiStickerSetId,
  }) => SetSupergroupCustomEmojiStickerSet(
    supergroupId: supergroupId ?? this.supergroupId,
    customEmojiStickerSetId: customEmojiStickerSetId ?? this.customEmojiStickerSetId,
  );

  static const CONSTRUCTOR = 'setSupergroupCustomEmojiStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
