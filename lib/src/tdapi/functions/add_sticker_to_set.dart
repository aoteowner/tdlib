import '../tdapi.dart';

class AddStickerToSet extends TdFunction {

  /// Adds a new sticker to a set
  const AddStickerToSet({
    required this.userId,
    required this.name,
    required this.sticker,
  });
  
  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [name] Sticker set name. The sticker set must be owned by the current user, and contain less than 200 stickers for custom emoji sticker sets and less than 120 otherwise
  final String name;

  /// [sticker] Sticker to add to the set
  final InputSticker sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "name": name,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  AddStickerToSet copyWith({
    int? userId,
    String? name,
    InputSticker? sticker,
  }) => AddStickerToSet(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'addStickerToSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
