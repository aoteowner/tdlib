import '../tdapi.dart';

class EmojiStatusCustomEmojis extends TdObject {
  /// Contains a list of custom emoji identifiers for emoji statuses
  const EmojiStatusCustomEmojis({
    required this.customEmojiIds,
    this.extra,
    this.clientId,
  });

  /// [customEmojiIds] The list of custom emoji identifiers
  final List<int> customEmojiIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory EmojiStatusCustomEmojis.fromJson(Map<String, dynamic> json) =>
      EmojiStatusCustomEmojis(
        customEmojiIds: json['custom_emoji_ids'] == null
            ? <int>[]
            : (json['custom_emoji_ids'] as List)
                .map((e) => int.tryParse(e ?? '') ?? 0)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_ids": customEmojiIds.map((e) => '$e').toList(),
    };
  }

  EmojiStatusCustomEmojis copyWith({
    List<int>? customEmojiIds,
    dynamic extra,
    int? clientId,
  }) {
    return EmojiStatusCustomEmojis(
      customEmojiIds: customEmojiIds ?? this.customEmojiIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'emojiStatusCustomEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}
