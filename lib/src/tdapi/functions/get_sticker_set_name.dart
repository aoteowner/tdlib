import '../tdapi.dart';

class GetStickerSetName extends TdFunction {

  /// Returns name of a sticker set by its identifier
  const GetStickerSetName({
    required this.setId,
  });
  
  /// [setId] Identifier of the sticker set
  final int setId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "set_id": setId,
      "@extra": extra,
    };
  }
  
  GetStickerSetName copyWith({
    int? setId,
  }) => GetStickerSetName(
    setId: setId ?? this.setId,
  );

  static const CONSTRUCTOR = 'getStickerSetName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
