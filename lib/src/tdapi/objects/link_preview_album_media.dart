import '../tdapi.dart';

class LinkPreviewAlbumMedia extends TdObject {
  /// Describes a media from a link preview album
  const LinkPreviewAlbumMedia();

  factory LinkPreviewAlbumMedia.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case LinkPreviewAlbumMediaPhoto.CONSTRUCTOR:
        return LinkPreviewAlbumMediaPhoto.fromJson(json);
      case LinkPreviewAlbumMediaVideo.CONSTRUCTOR:
        return LinkPreviewAlbumMediaVideo.fromJson(json);
      default:
        return const LinkPreviewAlbumMedia();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  LinkPreviewAlbumMedia copyWith() {
    return const LinkPreviewAlbumMedia();
  }

  static const CONSTRUCTOR = 'linkPreviewAlbumMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LinkPreviewAlbumMediaPhoto extends LinkPreviewAlbumMedia {
  /// The media is a photo
  const LinkPreviewAlbumMediaPhoto({
    required this.photo,
  });

  /// [photo] Photo description
  final Photo photo;

  factory LinkPreviewAlbumMediaPhoto.fromJson(Map<String, dynamic> json) =>
      LinkPreviewAlbumMediaPhoto(
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
  LinkPreviewAlbumMediaPhoto copyWith({
    Photo? photo,
  }) {
    return LinkPreviewAlbumMediaPhoto(
      photo: photo ?? this.photo,
    );
  }

  static const CONSTRUCTOR = 'linkPreviewAlbumMediaPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LinkPreviewAlbumMediaVideo extends LinkPreviewAlbumMedia {
  /// The media is a video
  const LinkPreviewAlbumMediaVideo({
    required this.video,
  });

  /// [video] Video description
  final Video video;

  factory LinkPreviewAlbumMediaVideo.fromJson(Map<String, dynamic> json) =>
      LinkPreviewAlbumMediaVideo(
        video: Video.fromJson(json['video'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
    };
  }

  @override
  LinkPreviewAlbumMediaVideo copyWith({
    Video? video,
  }) {
    return LinkPreviewAlbumMediaVideo(
      video: video ?? this.video,
    );
  }

  static const CONSTRUCTOR = 'linkPreviewAlbumMediaVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
