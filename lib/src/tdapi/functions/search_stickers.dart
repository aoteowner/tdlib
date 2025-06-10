part of '../tdapi.dart';

class SearchStickers extends TdFunction {

  /// Searches for stickers from public sticker sets that correspond to any of the given emoji
  const SearchStickers({
    required this.stickerType,
    required this.emojis,
    required this.query,
    required this.inputLanguageCodes,
    required this.offset,
    required this.limit,
  });
  
  /// [stickerType] Type of the stickers to return
  final StickerType stickerType;

  /// [emojis] Space-separated list of emojis to search for
  final String emojis;

  /// [query] Query to search for; may be empty to search for emoji only
  final String query;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's input language; may be empty if unknown
  final List<String> inputLanguageCodes;

  /// [offset] The offset from which to return the stickers; must be non-negative
  final int offset;

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "emojis": emojis,
      "query": query,
      "input_language_codes": inputLanguageCodes.map((i) => i).toList(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchStickers copyWith({
    StickerType? stickerType,
    String? emojis,
    String? query,
    List<String>? inputLanguageCodes,
    int? offset,
    int? limit,
  }) => SearchStickers(
    stickerType: stickerType ?? this.stickerType,
    emojis: emojis ?? this.emojis,
    query: query ?? this.query,
    inputLanguageCodes: inputLanguageCodes ?? this.inputLanguageCodes,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
