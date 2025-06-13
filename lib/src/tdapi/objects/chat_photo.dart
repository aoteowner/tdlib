import '../tdapi.dart';

class ChatPhoto extends TdObject {

  /// Describes a chat or user profile photo
  const ChatPhoto({
    required this.id,
    required this.addedDate,
    this.minithumbnail,
    required this.sizes,
    this.animation,
    this.smallAnimation,
    this.sticker,
  });
  
  /// [id] Unique photo identifier
  final int id;

  /// [addedDate] Point in time (Unix timestamp) when the photo has been added
  final int addedDate;

  /// [minithumbnail] Photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo in JPEG format, in different size
  final List<PhotoSize> sizes;

  /// [animation] A big (up to 1280x1280) animated variant of the photo in MPEG4 format; may be null
  final AnimatedChatPhoto? animation;

  /// [smallAnimation] A small (160x160) animated variant of the photo in MPEG4 format; may be null even the big animation is available
  final AnimatedChatPhoto? smallAnimation;

  /// [sticker] Sticker-based version of the chat photo; may be null
  final ChatPhotoSticker? sticker;
  
  /// Parse from a json
  factory ChatPhoto.fromJson(Map<String, dynamic> json) => ChatPhoto(
    id: int.tryParse(json['id'] ?? '') ?? 0,
    addedDate: json['added_date'] ?? 0,
    minithumbnail: Minithumbnail.fromJson(json['minithumbnail'] ?? {}),
    sizes: json['sizes'] == null ? <PhotoSize>[] :(json['sizes'] as List).map((e) => PhotoSize.fromJson(e ?? {})).toList(),
    animation: AnimatedChatPhoto.fromJson(json['animation'] ?? {}),
    smallAnimation: AnimatedChatPhoto.fromJson(json['small_animation'] ?? {}),
    sticker: ChatPhotoSticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "added_date": addedDate,
      "minithumbnail": minithumbnail?.toJson(),
      "sizes": sizes.map((e) => e.toJson()).toList(),
      "animation": animation?.toJson(),
      "small_animation": smallAnimation?.toJson(),
      "sticker": sticker?.toJson(),
    };
  }
  
  ChatPhoto copyWith({
    int? id,
    int? addedDate,
    Minithumbnail? minithumbnail,
    List<PhotoSize>? sizes,
    AnimatedChatPhoto? animation,
    AnimatedChatPhoto? smallAnimation,
    ChatPhotoSticker? sticker,
  }) => ChatPhoto(
    id: id ?? this.id,
    addedDate: addedDate ?? this.addedDate,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    sizes: sizes ?? this.sizes,
    animation: animation ?? this.animation,
    smallAnimation: smallAnimation ?? this.smallAnimation,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'chatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
