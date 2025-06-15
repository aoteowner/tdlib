import '../tdapi.dart';

class EmojiKeywords extends TdObject {
  /// Represents a list of emojis with their keywords
  const EmojiKeywords({
    required this.emojiKeywords,
    this.extra,
    this.clientId,
  });

  /// [emojiKeywords] List of emojis with their keywords
  final List<EmojiKeyword> emojiKeywords;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory EmojiKeywords.fromJson(Map<String, dynamic> json) => EmojiKeywords(
        emojiKeywords: json['emoji_keywords'] == null
            ? <EmojiKeyword>[]
            : (json['emoji_keywords'] as List)
                .map((e) => EmojiKeyword.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji_keywords": emojiKeywords.map((e) => e.toJson()).toList(),
    };
  }

  EmojiKeywords copyWith({
    List<EmojiKeyword>? emojiKeywords,
    dynamic extra,
    int? clientId,
  }) {
    return EmojiKeywords(
      emojiKeywords: emojiKeywords ?? this.emojiKeywords,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'emojiKeywords';

  @override
  String getConstructor() => CONSTRUCTOR;
}
