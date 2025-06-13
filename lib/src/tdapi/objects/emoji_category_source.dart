import '../tdapi.dart';

class EmojiCategorySource extends TdObject {

  /// Describes source of stickers for an emoji category
  const EmojiCategorySource();
  
  /// a EmojiCategorySource return type can be :
  /// * [EmojiCategorySourceSearch]
  /// * [EmojiCategorySourcePremium]
  factory EmojiCategorySource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case EmojiCategorySourceSearch.CONSTRUCTOR:
        return EmojiCategorySourceSearch.fromJson(json);
      case EmojiCategorySourcePremium.CONSTRUCTOR:
        return EmojiCategorySourcePremium.fromJson(json);
      default:
        return const EmojiCategorySource();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  EmojiCategorySource copyWith() => const EmojiCategorySource();

  static const CONSTRUCTOR = 'emojiCategorySource';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmojiCategorySourceSearch extends EmojiCategorySource {

  /// The category contains a list of similar emoji to search for in getStickers and searchStickers for stickers,. or getInlineQueryResults with the bot getOption("animation_search_bot_username") for animations
  const EmojiCategorySourceSearch({
    required this.emojis,
  });
  
  /// [emojis] List of emojis to search for
  final List<String> emojis;
  
  /// Parse from a json
  factory EmojiCategorySourceSearch.fromJson(Map<String, dynamic> json) => EmojiCategorySourceSearch(
    emojis: json['emojis'] == null ? <String>[] :(json['emojis'] as List).map((e) => (e  ?? '') as String).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emojis": emojis,
    };
  }
  
  @override
  EmojiCategorySourceSearch copyWith({
    List<String>? emojis,
  }) => EmojiCategorySourceSearch(
    emojis: emojis ?? this.emojis,
  );

  static const CONSTRUCTOR = 'emojiCategorySourceSearch';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmojiCategorySourcePremium extends EmojiCategorySource {

  /// The category contains premium stickers that must be found by getPremiumStickers
  const EmojiCategorySourcePremium();
  
  /// Parse from a json
  factory EmojiCategorySourcePremium.fromJson(Map<String, dynamic> json) => const EmojiCategorySourcePremium();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  EmojiCategorySourcePremium copyWith() => const EmojiCategorySourcePremium();

  static const CONSTRUCTOR = 'emojiCategorySourcePremium';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
