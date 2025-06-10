part of '../tdapi.dart';

class DeleteStickerSet extends TdFunction {

  /// Completely deletes a sticker set
  const DeleteStickerSet({
    required this.name,
  });
  
  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }
  
  DeleteStickerSet copyWith({
    String? name,
  }) => DeleteStickerSet(
    name: name ?? this.name,
  );

  static const CONSTRUCTOR = 'deleteStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
