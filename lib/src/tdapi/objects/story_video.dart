import '../tdapi.dart';

class StoryVideo extends TdObject {
  /// Describes a video file posted as a story
  const StoryVideo({
    required this.duration,
    required this.width,
    required this.height,
    required this.hasStickers,
    required this.isAnimation,
    this.minithumbnail,
    this.thumbnail,
    required this.preloadPrefixSize,
    required this.coverFrameTimestamp,
    required this.video,
  });

  /// [duration] Duration of the video, in seconds
  final double duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [hasStickers] True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [isAnimation] True, if the video has no sound
  final bool isAnimation;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; may be null
  final Thumbnail? thumbnail;

  /// [preloadPrefixSize] Size of file prefix, which is expected to be preloaded, in bytes
  final int preloadPrefixSize;

  /// [coverFrameTimestamp] Timestamp of the frame used as video thumbnail
  final double coverFrameTimestamp;

  /// [video] File containing the video
  final File video;

  factory StoryVideo.fromJson(Map<String, dynamic> json) => StoryVideo(
        duration: json['duration'] ?? 0,
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        hasStickers: json['has_stickers'] ?? false,
        isAnimation: json['is_animation'] ?? false,
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail'] ?? {}),
        thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? {}),
        preloadPrefixSize: json['preload_prefix_size'] ?? 0,
        coverFrameTimestamp: json['cover_frame_timestamp'] ?? 0,
        video: File.fromJson(json['video'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "width": width,
      "height": height,
      "has_stickers": hasStickers,
      "is_animation": isAnimation,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "preload_prefix_size": preloadPrefixSize,
      "cover_frame_timestamp": coverFrameTimestamp,
      "video": video.toJson(),
    };
  }

  StoryVideo copyWith({
    double? duration,
    int? width,
    int? height,
    bool? hasStickers,
    bool? isAnimation,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    int? preloadPrefixSize,
    double? coverFrameTimestamp,
    File? video,
  }) {
    return StoryVideo(
      duration: duration ?? this.duration,
      width: width ?? this.width,
      height: height ?? this.height,
      hasStickers: hasStickers ?? this.hasStickers,
      isAnimation: isAnimation ?? this.isAnimation,
      minithumbnail: minithumbnail ?? this.minithumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
      preloadPrefixSize: preloadPrefixSize ?? this.preloadPrefixSize,
      coverFrameTimestamp: coverFrameTimestamp ?? this.coverFrameTimestamp,
      video: video ?? this.video,
    );
  }

  static const CONSTRUCTOR = 'storyVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
