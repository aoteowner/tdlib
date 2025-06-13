import '../tdapi.dart';

class InputStoryContent extends TdObject {

  /// The content of a story to post
  const InputStoryContent();
  
  /// a InputStoryContent return type can be :
  /// * [InputStoryContentPhoto]
  /// * [InputStoryContentVideo]
  factory InputStoryContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputStoryContentPhoto.CONSTRUCTOR:
        return InputStoryContentPhoto.fromJson(json);
      case InputStoryContentVideo.CONSTRUCTOR:
        return InputStoryContentVideo.fromJson(json);
      default:
        return const InputStoryContent();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputStoryContent copyWith() => const InputStoryContent();

  static const CONSTRUCTOR = 'inputStoryContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryContentPhoto extends InputStoryContent {

  /// A photo story
  const InputStoryContentPhoto({
    required this.photo,
    required this.addedStickerFileIds,
  });
  
  /// [photo] Photo to send. The photo must be at most 10 MB in size. The photo size must be 1080x1920
  final InputFile photo;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable
  final List<int> addedStickerFileIds;
  
  /// Parse from a json
  factory InputStoryContentPhoto.fromJson(Map<String, dynamic> json) => InputStoryContentPhoto(
    photo: InputFile.fromJson(json['photo'] ?? {}),
    addedStickerFileIds: json['added_sticker_file_ids'] == null ? <int>[] :(json['added_sticker_file_ids'] as List).map((e) => (e  ?? 0) as int).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "added_sticker_file_ids": addedStickerFileIds,
    };
  }
  
  @override
  InputStoryContentPhoto copyWith({
    InputFile? photo,
    List<int>? addedStickerFileIds,
  }) => InputStoryContentPhoto(
    photo: photo ?? this.photo,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
  );

  static const CONSTRUCTOR = 'inputStoryContentPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryContentVideo extends InputStoryContent {

  /// A video story
  const InputStoryContentVideo({
    required this.video,
    required this.addedStickerFileIds,
    required this.duration,
    required this.coverFrameTimestamp,
    required this.isAnimation,
  });
  
  /// [video] Video to be sent. The video size must be 720x1280. The video must be streamable and stored in MPEG4 format, after encoding with H.265 codec and key frames added each second
  final InputFile video;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Precise duration of the video, in seconds; 0-60
  final double duration;

  /// [coverFrameTimestamp] Timestamp of the frame, which will be used as video thumbnail
  final double coverFrameTimestamp;

  /// [isAnimation] True, if the video has no sound
  final bool isAnimation;
  
  /// Parse from a json
  factory InputStoryContentVideo.fromJson(Map<String, dynamic> json) => InputStoryContentVideo(
    video: InputFile.fromJson(json['video'] ?? {}),
    addedStickerFileIds: json['added_sticker_file_ids'] == null ? <int>[] :(json['added_sticker_file_ids'] as List).map((e) => (e  ?? 0) as int).toList(),
    duration: json['duration'] ?? 0,
    coverFrameTimestamp: json['cover_frame_timestamp'] ?? 0,
    isAnimation: json['is_animation'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "added_sticker_file_ids": addedStickerFileIds,
      "duration": duration,
      "cover_frame_timestamp": coverFrameTimestamp,
      "is_animation": isAnimation,
    };
  }
  
  @override
  InputStoryContentVideo copyWith({
    InputFile? video,
    List<int>? addedStickerFileIds,
    double? duration,
    double? coverFrameTimestamp,
    bool? isAnimation,
  }) => InputStoryContentVideo(
    video: video ?? this.video,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    duration: duration ?? this.duration,
    coverFrameTimestamp: coverFrameTimestamp ?? this.coverFrameTimestamp,
    isAnimation: isAnimation ?? this.isAnimation,
  );

  static const CONSTRUCTOR = 'inputStoryContentVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
