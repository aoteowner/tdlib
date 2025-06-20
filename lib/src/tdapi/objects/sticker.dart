import '../tdapi.dart';

class Sticker extends TdObject {
  /// Describes a sticker
  const Sticker({
    required this.id,
    required this.setId,
    required this.width,
    required this.height,
    required this.emoji,
    required this.format,
    required this.fullType,
    this.thumbnail,
    required this.sticker,
    this.extra,
    this.clientId,
  });

  /// [id] Unique sticker identifier within the set; 0 if none
  final int id;

  /// [setId] Identifier of the sticker set to which the sticker belongs; 0 if none
  final int setId;

  /// [width] Sticker width; as defined by the sender
  final int width;

  /// [height] Sticker height; as defined by the sender
  final int height;

  /// [emoji] Emoji corresponding to the sticker
  final String emoji;

  /// [format] Sticker format
  final StickerFormat format;

  /// [fullType] Sticker's full type
  final StickerFullType fullType;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null
  final Thumbnail? thumbnail;

  /// [sticker] File containing the sticker
  final File sticker;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Sticker.fromJson(Map<String, dynamic> json) => Sticker(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        setId: int.tryParse(json['set_id'] ?? '') ?? 0,
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        emoji: json['emoji'] ?? '',
        format: StickerFormat.fromJson(json['format'] ?? {}),
        fullType: StickerFullType.fromJson(json['full_type'] ?? {}),
        thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? {}),
        sticker: File.fromJson(json['sticker'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "set_id": setId,
      "width": width,
      "height": height,
      "emoji": emoji,
      "format": format.toJson(),
      "full_type": fullType.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "sticker": sticker.toJson(),
    };
  }

  Sticker copyWith({
    int? id,
    int? setId,
    int? width,
    int? height,
    String? emoji,
    StickerFormat? format,
    StickerFullType? fullType,
    Thumbnail? thumbnail,
    File? sticker,
    dynamic extra,
    int? clientId,
  }) {
    return Sticker(
      id: id ?? this.id,
      setId: setId ?? this.setId,
      width: width ?? this.width,
      height: height ?? this.height,
      emoji: emoji ?? this.emoji,
      format: format ?? this.format,
      fullType: fullType ?? this.fullType,
      thumbnail: thumbnail ?? this.thumbnail,
      sticker: sticker ?? this.sticker,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'sticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
