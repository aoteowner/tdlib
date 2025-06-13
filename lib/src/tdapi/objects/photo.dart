import '../tdapi.dart';

class Photo extends TdObject {

  /// Describes a photo
  const Photo({
    required this.hasStickers,
    this.minithumbnail,
    required this.sizes,
  });
  
  /// [hasStickers] True, if stickers were added to the photo. The list of corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [minithumbnail] Photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo, in different sizes
  final List<PhotoSize> sizes;
  
  /// Parse from a json
  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
    hasStickers: json['has_stickers'] ?? false,
    minithumbnail: Minithumbnail.fromJson(json['minithumbnail'] ?? {}),
    sizes: json['sizes'] == null ? <PhotoSize>[] :(json['sizes'] as List).map((e) => PhotoSize.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_stickers": hasStickers,
      "minithumbnail": minithumbnail?.toJson(),
      "sizes": sizes.map((e) => e.toJson()).toList(),
    };
  }
  
  Photo copyWith({
    bool? hasStickers,
    Minithumbnail? minithumbnail,
    List<PhotoSize>? sizes,
  }) => Photo(
    hasStickers: hasStickers ?? this.hasStickers,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    sizes: sizes ?? this.sizes,
  );

  static const CONSTRUCTOR = 'photo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
