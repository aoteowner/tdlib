import '../tdapi.dart';

class StickerSet extends TdObject {

  /// Represents a sticker set
  const StickerSet({
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
    required this.stickers,
    required this.emojis,
    this.extra,
    this.clientId,
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

  /// [stickers] List of stickers in this set
  final List<Sticker> stickers;

  /// [emojis] A list of emojis corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  final List<Emojis> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StickerSet.fromJson(Map<String, dynamic> json) => StickerSet(
    id: int.parse(json['id']),
    title: json['title'],
    name: json['name'],
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    thumbnailOutline: json['thumbnail_outline'] == null ? null : Outline.fromJson(json['thumbnail_outline']),
    isOwned: json['is_owned'],
    isInstalled: json['is_installed'],
    isArchived: json['is_archived'],
    isOfficial: json['is_official'],
    stickerType: StickerType.fromJson(json['sticker_type']),
    needsRepainting: json['needs_repainting'],
    isAllowedAsChatEmojiStatus: json['is_allowed_as_chat_emoji_status'],
    isViewed: json['is_viewed'],
    stickers: List<Sticker>.from((json['stickers'] ?? []).map((item) => Sticker.fromJson(item)).toList()),
    emojis: List<Emojis>.from((json['emojis'] ?? []).map((item) => Emojis.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
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
      "stickers": stickers.map((i) => i.toJson()).toList(),
      "emojis": emojis.map((i) => i.toJson()).toList(),
    };
  }
  
  StickerSet copyWith({
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
    List<Sticker>? stickers,
    List<Emojis>? emojis,
    dynamic extra,
    int? clientId,
  }) => StickerSet(
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
    stickers: stickers ?? this.stickers,
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'stickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
