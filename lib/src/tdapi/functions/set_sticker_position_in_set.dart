import '../tdapi.dart';

class SetStickerPositionInSet extends TdFunction {
  /// Changes the position of a sticker in the set to which it belongs. The sticker set must be owned by the current user
  const SetStickerPositionInSet({
    required this.sticker,
    required this.position,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [position] New position of the sticker in the set, 0-based
  final int position;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "position": position,
      "@extra": extra,
    };
  }

  SetStickerPositionInSet copyWith({
    InputFile? sticker,
    int? position,
  }) {
    return SetStickerPositionInSet(
      sticker: sticker ?? this.sticker,
      position: position ?? this.position,
    );
  }

  static const CONSTRUCTOR = 'setStickerPositionInSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
