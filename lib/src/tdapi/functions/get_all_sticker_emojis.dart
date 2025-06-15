import '../tdapi.dart';

class GetAllStickerEmojis extends TdFunction {
  /// Returns unique emoji that correspond to stickers to be found by the getStickers(sticker_type, query, 1000000, chat_id)
  const GetAllStickerEmojis({
    required this.stickerType,
    required this.query,
    required this.chatId,
    required this.returnOnlyMainEmoji,
  });

  /// [stickerType] Type of the stickers to search for
  final StickerType stickerType;

  /// [query] Search query
  final String query;

  /// [chatId] Chat identifier for which to find stickers
  final int chatId;

  /// [returnOnlyMainEmoji] Pass true if only main emoji for each found sticker must be included in the result
  final bool returnOnlyMainEmoji;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "query": query,
      "chat_id": chatId,
      "return_only_main_emoji": returnOnlyMainEmoji,
      "@extra": extra,
    };
  }

  GetAllStickerEmojis copyWith({
    StickerType? stickerType,
    String? query,
    int? chatId,
    bool? returnOnlyMainEmoji,
  }) {
    return GetAllStickerEmojis(
      stickerType: stickerType ?? this.stickerType,
      query: query ?? this.query,
      chatId: chatId ?? this.chatId,
      returnOnlyMainEmoji: returnOnlyMainEmoji ?? this.returnOnlyMainEmoji,
    );
  }

  static const CONSTRUCTOR = 'getAllStickerEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}
