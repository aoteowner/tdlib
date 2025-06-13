import '../tdapi.dart';

class StickerSetInfo extends TdObject {

  /// Represents short information about a sticker set
  const StickerSetInfo({
    required this.id,
    required this.title,
    required this.name,
    this.thumbnail,
    this.thumbnailOutline,
    required this.isOwned,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    required this.stickerType,
    required this.needsRepainting,
    required this.isAllowedAsChatEmojiStatus,
    required this.isViewed,
    required this.size,
    required this.covers,
  });
  
  /// [id] Identifier of the sticker set
  final int id;

  /// [title] Title of the sticker set
  final String title;

  /// [name] Name of the sticker set
  final String name;

  /// [thumbnail] Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed
  final Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline; may be null if unknown
  final Outline? thumbnailOutline;

  /// [isOwned] True, if the sticker set is owned by the current user
  final bool isOwned;

  /// [isInstalled] True, if the sticker set has been installed by the current user
  final bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  final bool isOfficial;

  /// [stickerType] Type of the stickers in the set
  final StickerType stickerType;

  /// [needsRepainting] True, if stickers in the sticker set are custom emoji that must be repainted; for custom emoji sticker sets only
  final bool needsRepainting;

  /// [isAllowedAsChatEmojiStatus] True, if stickers in the sticker set are custom emoji that can be used as chat emoji status; for custom emoji sticker sets only
  final bool isAllowedAsChatEmojiStatus;

  /// [isViewed] True for already viewed trending sticker sets
  final bool isViewed;

  /// [size] Total number of stickers in the set
  final int size;

  /// [covers] Up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full sticker set needs to be requested
  final List<Sticker> covers;
  
  /// Parse from a json
  factory StickerSetInfo.fromJson(Map<String, dynamic> json) => StickerSetInfo(
    id: int.tryParse(json['id'] ?? '') ?? 0,
    title: json['title'] ?? '',
    name: json['name'] ?? '',
    thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? {}),
    thumbnailOutline: Outline.fromJson(json['thumbnail_outline'] ?? {}),
    isOwned: json['is_owned'] ?? false,
    isInstalled: json['is_installed'] ?? false,
    isArchived: json['is_archived'] ?? false,
    isOfficial: json['is_official'] ?? false,
    stickerType: StickerType.fromJson(json['sticker_type'] ?? {}),
    needsRepainting: json['needs_repainting'] ?? false,
    isAllowedAsChatEmojiStatus: json['is_allowed_as_chat_emoji_status'] ?? false,
    isViewed: json['is_viewed'] ?? false,
    size: json['size'] ?? 0,
    covers: json['covers'] == null ? <Sticker>[] :(json['covers'] as List).map((e) => Sticker.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "name": name,
      "thumbnail": thumbnail?.toJson(),
      "thumbnail_outline": thumbnailOutline?.toJson(),
      "is_owned": isOwned,
      "is_installed": isInstalled,
      "is_archived": isArchived,
      "is_official": isOfficial,
      "sticker_type": stickerType.toJson(),
      "needs_repainting": needsRepainting,
      "is_allowed_as_chat_emoji_status": isAllowedAsChatEmojiStatus,
      "is_viewed": isViewed,
      "size": size,
      "covers": covers.map((e) => e.toJson()).toList(),
    };
  }
  
  StickerSetInfo copyWith({
    int? id,
    String? title,
    String? name,
    Thumbnail? thumbnail,
    Outline? thumbnailOutline,
    bool? isOwned,
    bool? isInstalled,
    bool? isArchived,
    bool? isOfficial,
    StickerType? stickerType,
    bool? needsRepainting,
    bool? isAllowedAsChatEmojiStatus,
    bool? isViewed,
    int? size,
    List<Sticker>? covers,
  }) => StickerSetInfo(
    id: id ?? this.id,
    title: title ?? this.title,
    name: name ?? this.name,
    thumbnail: thumbnail ?? this.thumbnail,
    thumbnailOutline: thumbnailOutline ?? this.thumbnailOutline,
    isOwned: isOwned ?? this.isOwned,
    isInstalled: isInstalled ?? this.isInstalled,
    isArchived: isArchived ?? this.isArchived,
    isOfficial: isOfficial ?? this.isOfficial,
    stickerType: stickerType ?? this.stickerType,
    needsRepainting: needsRepainting ?? this.needsRepainting,
    isAllowedAsChatEmojiStatus: isAllowedAsChatEmojiStatus ?? this.isAllowedAsChatEmojiStatus,
    isViewed: isViewed ?? this.isViewed,
    size: size ?? this.size,
    covers: covers ?? this.covers,
  );

  static const CONSTRUCTOR = 'stickerSetInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
