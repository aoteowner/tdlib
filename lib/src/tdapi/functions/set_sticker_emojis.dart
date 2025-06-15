import '../tdapi.dart';

class SetStickerEmojis extends TdFunction {
  /// Changes the list of emojis corresponding to a sticker. The sticker must belong to a regular or custom emoji sticker set that is owned by the current user
  const SetStickerEmojis({
    required this.sticker,
    required this.emojis,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [emojis] New string with 1-20 emoji corresponding to the sticker
  final String emojis;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "emojis": emojis,
      "@extra": extra,
    };
  }

  SetStickerEmojis copyWith({
    InputFile? sticker,
    String? emojis,
  }) {
    return SetStickerEmojis(
      sticker: sticker ?? this.sticker,
      emojis: emojis ?? this.emojis,
    );
  }

  static const CONSTRUCTOR = 'setStickerEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}
