part of '../tdapi.dart';

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
  
  /// Parse from a json
  factory EmojiStatusCustomEmojis.fromJson(Map<String, dynamic> json) => EmojiStatusCustomEmojis(
    customEmojiIds: List<int>.from((json['custom_emoji_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_ids": customEmojiIds.map((i) => i).toList(),
    };
  }
  
  EmojiStatusCustomEmojis copyWith({
    List<int>? customEmojiIds,
    dynamic extra,
    int? clientId,
  }) => EmojiStatusCustomEmojis(
    customEmojiIds: customEmojiIds ?? this.customEmojiIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'emojiStatusCustomEmojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
