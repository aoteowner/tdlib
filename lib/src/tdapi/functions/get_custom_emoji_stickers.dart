import '../tdapi.dart';

class GetCustomEmojiStickers extends TdFunction {
  /// Returns the list of custom emoji stickers by their identifiers. Stickers are returned in arbitrary order. Only found stickers are returned
  const GetCustomEmojiStickers({
    required this.customEmojiIds,
  });

  /// [customEmojiIds] Identifiers of custom emoji stickers. At most 200 custom emoji stickers can be received simultaneously
  final List<int> customEmojiIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_ids": customEmojiIds.map((e) => '$e').toList(),
      "@extra": extra,
    };
  }

  GetCustomEmojiStickers copyWith({
    List<int>? customEmojiIds,
  }) {
    return GetCustomEmojiStickers(
      customEmojiIds: customEmojiIds ?? this.customEmojiIds,
    );
  }

  static const CONSTRUCTOR = 'getCustomEmojiStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
