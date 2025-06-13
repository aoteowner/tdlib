import '../tdapi.dart';

class EmojiCategory extends TdObject {

  /// Describes an emoji category
  const EmojiCategory({
    required this.name,
    required this.icon,
    required this.source,
    required this.isGreeting,
  });
  
  /// [name] Name of the category
  final String name;

  /// [icon] Custom emoji sticker, which represents icon of the category
  final Sticker icon;

  /// [source] Source of stickers for the emoji category
  final EmojiCategorySource source;

  /// [isGreeting] True, if the category must be shown first when choosing a sticker for the start page
  final bool isGreeting;
  
  /// Parse from a json
  factory EmojiCategory.fromJson(Map<String, dynamic> json) => EmojiCategory(
    name: json['name'] ?? '',
    icon: Sticker.fromJson(json['icon'] ?? {}),
    source: EmojiCategorySource.fromJson(json['source'] ?? {}),
    isGreeting: json['is_greeting'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "icon": icon.toJson(),
      "source": source.toJson(),
      "is_greeting": isGreeting,
    };
  }
  
  EmojiCategory copyWith({
    String? name,
    Sticker? icon,
    EmojiCategorySource? source,
    bool? isGreeting,
  }) => EmojiCategory(
    name: name ?? this.name,
    icon: icon ?? this.icon,
    source: source ?? this.source,
    isGreeting: isGreeting ?? this.isGreeting,
  );

  static const CONSTRUCTOR = 'emojiCategory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
