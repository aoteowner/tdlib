import '../tdapi.dart';

class RemoveStickerFromSet extends TdFunction {
  /// Removes a sticker from the set to which it belongs. The sticker set must be owned by the current user
  const RemoveStickerFromSet({
    required this.sticker,
  });

  /// [sticker] Sticker to remove from the set
  final InputFile sticker;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }

  RemoveStickerFromSet copyWith({
    InputFile? sticker,
  }) {
    return RemoveStickerFromSet(
      sticker: sticker ?? this.sticker,
    );
  }

  static const CONSTRUCTOR = 'removeStickerFromSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
