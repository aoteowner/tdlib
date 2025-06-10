part of '../tdapi.dart';

class SearchStickerSet extends TdFunction {

  /// Searches for a sticker set by its name
  const SearchStickerSet({
    required this.name,
    required this.ignoreCache,
  });
  
  /// [name] Name of the sticker set 
  final String name;

  /// [ignoreCache] Pass true to ignore local cache of sticker sets and always send a network request
  final bool ignoreCache;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "ignore_cache": ignoreCache,
      "@extra": extra,
    };
  }
  
  SearchStickerSet copyWith({
    String? name,
    bool? ignoreCache,
  }) => SearchStickerSet(
    name: name ?? this.name,
    ignoreCache: ignoreCache ?? this.ignoreCache,
  );

  static const CONSTRUCTOR = 'searchStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
