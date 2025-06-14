import '../tdapi.dart';

class GetOwnedStickerSets extends TdFunction {
  /// Returns sticker sets owned by the current user
  const GetOwnedStickerSets({
    required this.offsetStickerSetId,
    required this.limit,
  });

  /// [offsetStickerSetId] Identifier of the sticker set from which to return owned sticker sets; use 0 to get results from the beginning
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "offset_sticker_set_id": offsetStickerSetId,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetOwnedStickerSets copyWith({
    int? offsetStickerSetId,
    int? limit,
  }) {
    return GetOwnedStickerSets(
      offsetStickerSetId: offsetStickerSetId ?? this.offsetStickerSetId,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'getOwnedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
