part of '../tdapi.dart';

class GetGreetingStickers extends TdFunction {

  /// Returns greeting stickers from regular sticker sets that can be used for the start page of other users
  const GetGreetingStickers();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetGreetingStickers copyWith() => const GetGreetingStickers();

  static const CONSTRUCTOR = 'getGreetingStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
