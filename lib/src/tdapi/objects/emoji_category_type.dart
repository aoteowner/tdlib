import '../tdapi.dart';

class EmojiCategoryType extends TdObject {

  /// Describes type of emoji category
  const EmojiCategoryType();
  
  /// a EmojiCategoryType return type can be :
  /// * [EmojiCategoryTypeDefault]
  /// * [EmojiCategoryTypeRegularStickers]
  /// * [EmojiCategoryTypeEmojiStatus]
  /// * [EmojiCategoryTypeChatPhoto]
  factory EmojiCategoryType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case EmojiCategoryTypeDefault.CONSTRUCTOR:
        return EmojiCategoryTypeDefault.fromJson(json);
      case EmojiCategoryTypeRegularStickers.CONSTRUCTOR:
        return EmojiCategoryTypeRegularStickers.fromJson(json);
      case EmojiCategoryTypeEmojiStatus.CONSTRUCTOR:
        return EmojiCategoryTypeEmojiStatus.fromJson(json);
      case EmojiCategoryTypeChatPhoto.CONSTRUCTOR:
        return EmojiCategoryTypeChatPhoto.fromJson(json);
      default:
        return const EmojiCategoryType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  EmojiCategoryType copyWith() => const EmojiCategoryType();

  static const CONSTRUCTOR = 'emojiCategoryType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmojiCategoryTypeDefault extends EmojiCategoryType {

  /// The category must be used by default (e.g., for custom emoji or animation search)
  const EmojiCategoryTypeDefault();
  
  /// Parse from a json
  factory EmojiCategoryTypeDefault.fromJson(Map<String, dynamic> json) => const EmojiCategoryTypeDefault();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  EmojiCategoryTypeDefault copyWith() => const EmojiCategoryTypeDefault();

  static const CONSTRUCTOR = 'emojiCategoryTypeDefault';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmojiCategoryTypeRegularStickers extends EmojiCategoryType {

  /// The category must be used by default for regular sticker selection. It may contain greeting emoji category and premium stickers
  const EmojiCategoryTypeRegularStickers();
  
  /// Parse from a json
  factory EmojiCategoryTypeRegularStickers.fromJson(Map<String, dynamic> json) => const EmojiCategoryTypeRegularStickers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  EmojiCategoryTypeRegularStickers copyWith() => const EmojiCategoryTypeRegularStickers();

  static const CONSTRUCTOR = 'emojiCategoryTypeRegularStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmojiCategoryTypeEmojiStatus extends EmojiCategoryType {

  /// The category must be used for emoji status selection
  const EmojiCategoryTypeEmojiStatus();
  
  /// Parse from a json
  factory EmojiCategoryTypeEmojiStatus.fromJson(Map<String, dynamic> json) => const EmojiCategoryTypeEmojiStatus();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  EmojiCategoryTypeEmojiStatus copyWith() => const EmojiCategoryTypeEmojiStatus();

  static const CONSTRUCTOR = 'emojiCategoryTypeEmojiStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmojiCategoryTypeChatPhoto extends EmojiCategoryType {

  /// The category must be used for chat photo emoji selection
  const EmojiCategoryTypeChatPhoto();
  
  /// Parse from a json
  factory EmojiCategoryTypeChatPhoto.fromJson(Map<String, dynamic> json) => const EmojiCategoryTypeChatPhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  EmojiCategoryTypeChatPhoto copyWith() => const EmojiCategoryTypeChatPhoto();

  static const CONSTRUCTOR = 'emojiCategoryTypeChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
