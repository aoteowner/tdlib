part of '../tdapi.dart';

class SearchStickerSets extends TdFunction {

  /// Searches for sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
  const SearchStickerSets({
    required this.stickerType,
    required this.query,
  });
  
  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  /// [query] Query to search for
  final String query;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "query": query,
      "@extra": extra,
    };
  }
  
  SearchStickerSets copyWith({
    StickerType? stickerType,
    String? query,
  }) => SearchStickerSets(
    stickerType: stickerType ?? this.stickerType,
    query: query ?? this.query,
  );

  static const CONSTRUCTOR = 'searchStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
