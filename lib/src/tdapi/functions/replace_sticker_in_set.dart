import '../tdapi.dart';

class ReplaceStickerInSet extends TdFunction {
  /// Replaces existing sticker in a set. The function is equivalent to removeStickerFromSet, then addStickerToSet, then setStickerPositionInSet
  const ReplaceStickerInSet({
    required this.userId,
    required this.name,
    required this.oldSticker,
    required this.newSticker,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  /// [oldSticker] Sticker to remove from the set
  final InputFile oldSticker;

  /// [newSticker] Sticker to add to the set
  final InputSticker newSticker;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "name": name,
      "old_sticker": oldSticker.toJson(),
      "new_sticker": newSticker.toJson(),
      "@extra": extra,
    };
  }

  ReplaceStickerInSet copyWith({
    int? userId,
    String? name,
    InputFile? oldSticker,
    InputSticker? newSticker,
  }) {
    return ReplaceStickerInSet(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      oldSticker: oldSticker ?? this.oldSticker,
      newSticker: newSticker ?? this.newSticker,
    );
  }

  static const CONSTRUCTOR = 'replaceStickerInSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
