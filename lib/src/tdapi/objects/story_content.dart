import '../tdapi.dart';

class StoryContent extends TdObject {
  /// Contains the content of a story
  const StoryContent();

  factory StoryContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StoryContentPhoto.CONSTRUCTOR:
        return StoryContentPhoto.fromJson(json);
      case StoryContentVideo.CONSTRUCTOR:
        return StoryContentVideo.fromJson(json);
      case StoryContentUnsupported.CONSTRUCTOR:
        return StoryContentUnsupported.fromJson(json);
      default:
        return const StoryContent();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StoryContent copyWith() {
    return const StoryContent();
  }

  static const CONSTRUCTOR = 'storyContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryContentPhoto extends StoryContent {
  /// A photo story
  const StoryContentPhoto({
    required this.photo,
  });

  /// [photo] The photo
  final Photo photo;

  factory StoryContentPhoto.fromJson(Map<String, dynamic> json) =>
      StoryContentPhoto(
        photo: Photo.fromJson(json['photo'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }

  @override
  StoryContentPhoto copyWith({
    Photo? photo,
  }) {
    return StoryContentPhoto(
      photo: photo ?? this.photo,
    );
  }

  static const CONSTRUCTOR = 'storyContentPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryContentVideo extends StoryContent {
  /// A video story
  const StoryContentVideo({
    required this.video,
    this.alternativeVideo,
  });

  /// [video] The video in MPEG4 format
  final StoryVideo video;

  /// [alternativeVideo] Alternative version of the video in MPEG4 format, encoded with H.264 codec; may be null
  final StoryVideo? alternativeVideo;

  factory StoryContentVideo.fromJson(Map<String, dynamic> json) =>
      StoryContentVideo(
        video: StoryVideo.fromJson(json['video'] ?? {}),
        alternativeVideo: StoryVideo.fromJson(json['alternative_video'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "alternative_video": alternativeVideo?.toJson(),
    };
  }

  @override
  StoryContentVideo copyWith({
    StoryVideo? video,
    StoryVideo? alternativeVideo,
  }) {
    return StoryContentVideo(
      video: video ?? this.video,
      alternativeVideo: alternativeVideo ?? this.alternativeVideo,
    );
  }

  static const CONSTRUCTOR = 'storyContentVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryContentUnsupported extends StoryContent {
  /// A story content that is not supported in the current TDLib version
  const StoryContentUnsupported();

  factory StoryContentUnsupported.fromJson(Map<String, dynamic> json) =>
      const StoryContentUnsupported();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StoryContentUnsupported copyWith() {
    return const StoryContentUnsupported();
  }

  static const CONSTRUCTOR = 'storyContentUnsupported';

  @override
  String getConstructor() => CONSTRUCTOR;
}
