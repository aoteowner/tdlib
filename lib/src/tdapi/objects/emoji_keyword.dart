part of '../tdapi.dart';

class EmojiKeyword extends TdObject {

  /// Represents an emoji with its keyword
  const EmojiKeyword({
    required this.emoji,
    required this.keyword,
  });
  
  /// [emoji] The emoji 
  final String emoji;

  /// [keyword] The keyword
  final String keyword;
  
  /// Parse from a json
  factory EmojiKeyword.fromJson(Map<String, dynamic> json) => EmojiKeyword(
    emoji: json['emoji'],
    keyword: json['keyword'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "keyword": keyword,
    };
  }
  
  EmojiKeyword copyWith({
    String? emoji,
    String? keyword,
  }) => EmojiKeyword(
    emoji: emoji ?? this.emoji,
    keyword: keyword ?? this.keyword,
  );

  static const CONSTRUCTOR = 'emojiKeyword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
