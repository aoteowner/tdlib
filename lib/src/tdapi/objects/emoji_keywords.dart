part of '../tdapi.dart';

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
  
  /// Parse from a json
  factory EmojiKeywords.fromJson(Map<String, dynamic> json) => EmojiKeywords(
    emojiKeywords: List<EmojiKeyword>.from((json['emoji_keywords'] ?? []).map((item) => EmojiKeyword.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji_keywords": emojiKeywords.map((i) => i.toJson()).toList(),
    };
  }
  
  EmojiKeywords copyWith({
    List<EmojiKeyword>? emojiKeywords,
    dynamic extra,
    int? clientId,
  }) => EmojiKeywords(
    emojiKeywords: emojiKeywords ?? this.emojiKeywords,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'emojiKeywords';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
