import '../tdapi.dart';

class GetStickerOutline extends TdFunction {
  /// Returns outline of a sticker. This is an offline method. Returns a 404 error if the outline isn't known
  const GetStickerOutline({
    required this.stickerFileId,
    required this.forAnimatedEmoji,
    required this.forClickedAnimatedEmojiMessage,
  });

  /// [stickerFileId] File identifier of the sticker
  final int stickerFileId;

  /// [forAnimatedEmoji] Pass true to get the outline scaled for animated emoji
  final bool forAnimatedEmoji;

  /// [forClickedAnimatedEmojiMessage] Pass true to get the outline scaled for clicked animated emoji message
  final bool forClickedAnimatedEmojiMessage;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_file_id": stickerFileId,
      "for_animated_emoji": forAnimatedEmoji,
      "for_clicked_animated_emoji_message": forClickedAnimatedEmojiMessage,
      "@extra": extra,
    };
  }

  GetStickerOutline copyWith({
    int? stickerFileId,
    bool? forAnimatedEmoji,
    bool? forClickedAnimatedEmojiMessage,
  }) {
    return GetStickerOutline(
      stickerFileId: stickerFileId ?? this.stickerFileId,
      forAnimatedEmoji: forAnimatedEmoji ?? this.forAnimatedEmoji,
      forClickedAnimatedEmojiMessage:
          forClickedAnimatedEmojiMessage ?? this.forClickedAnimatedEmojiMessage,
    );
  }

  static const CONSTRUCTOR = 'getStickerOutline';

  @override
  String getConstructor() => CONSTRUCTOR;
}
