part of '../tdapi.dart';

class GetDefaultBackgroundCustomEmojiStickers extends TdFunction {

  /// Returns default list of custom emoji stickers for reply background
  const GetDefaultBackgroundCustomEmojiStickers();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetDefaultBackgroundCustomEmojiStickers copyWith() => const GetDefaultBackgroundCustomEmojiStickers();

  static const CONSTRUCTOR = 'getDefaultBackgroundCustomEmojiStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
