part of '../tdapi.dart';

class PaidMedia extends TdObject {

  /// Describes a paid media
  const PaidMedia();
  
  /// a PaidMedia return type can be :
  /// * [PaidMediaPreview]
  /// * [PaidMediaPhoto]
  /// * [PaidMediaVideo]
  /// * [PaidMediaUnsupported]
  factory PaidMedia.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PaidMediaPreview.CONSTRUCTOR:
        return PaidMediaPreview.fromJson(json);
      case PaidMediaPhoto.CONSTRUCTOR:
        return PaidMediaPhoto.fromJson(json);
      case PaidMediaVideo.CONSTRUCTOR:
        return PaidMediaVideo.fromJson(json);
      case PaidMediaUnsupported.CONSTRUCTOR:
        return PaidMediaUnsupported.fromJson(json);
      default:
        return const PaidMedia();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PaidMedia copyWith() => const PaidMedia();

  static const CONSTRUCTOR = 'paidMedia';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaidMediaPreview extends PaidMedia {

  /// The media is hidden until the invoice is paid
  const PaidMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
  });
  
  /// [width] Media width; 0 if unknown
  final int width;

  /// [height] Media height; 0 if unknown
  final int height;

  /// [duration] Media duration, in seconds; 0 if unknown
  final int duration;

  /// [minithumbnail] Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;
  
  /// Parse from a json
  factory PaidMediaPreview.fromJson(Map<String, dynamic> json) => PaidMediaPreview(
    width: json['width'],
    height: json['height'],
    duration: json['duration'],
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "width": width,
      "height": height,
      "duration": duration,
      "minithumbnail": minithumbnail?.toJson(),
    };
  }
  
  @override
  PaidMediaPreview copyWith({
    int? width,
    int? height,
    int? duration,
    Minithumbnail? minithumbnail,
  }) => PaidMediaPreview(
    width: width ?? this.width,
    height: height ?? this.height,
    duration: duration ?? this.duration,
    minithumbnail: minithumbnail ?? this.minithumbnail,
  );

  static const CONSTRUCTOR = 'paidMediaPreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaidMediaPhoto extends PaidMedia {

  /// The media is a photo
  const PaidMediaPhoto({
    required this.photo,
  });
  
  /// [photo] The photo
  final Photo photo;
  
  /// Parse from a json
  factory PaidMediaPhoto.fromJson(Map<String, dynamic> json) => PaidMediaPhoto(
    photo: Photo.fromJson(json['photo']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }
  
  @override
  PaidMediaPhoto copyWith({
    Photo? photo,
  }) => PaidMediaPhoto(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'paidMediaPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaidMediaVideo extends PaidMedia {

  /// The media is a video
  const PaidMediaVideo({
    required this.video,
    this.cover,
    required this.startTimestamp,
  });
  
  /// [video] The video
  final Video video;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in seconds
  final int startTimestamp;
  
  /// Parse from a json
  factory PaidMediaVideo.fromJson(Map<String, dynamic> json) => PaidMediaVideo(
    video: Video.fromJson(json['video']),
    cover: json['cover'] == null ? null : Photo.fromJson(json['cover']),
    startTimestamp: json['start_timestamp'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "cover": cover?.toJson(),
      "start_timestamp": startTimestamp,
    };
  }
  
  @override
  PaidMediaVideo copyWith({
    Video? video,
    Photo? cover,
    int? startTimestamp,
  }) => PaidMediaVideo(
    video: video ?? this.video,
    cover: cover ?? this.cover,
    startTimestamp: startTimestamp ?? this.startTimestamp,
  );

  static const CONSTRUCTOR = 'paidMediaVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaidMediaUnsupported extends PaidMedia {

  /// The media is unsupported
  const PaidMediaUnsupported();
  
  /// Parse from a json
  factory PaidMediaUnsupported.fromJson(Map<String, dynamic> json) => const PaidMediaUnsupported();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PaidMediaUnsupported copyWith() => const PaidMediaUnsupported();

  static const CONSTRUCTOR = 'paidMediaUnsupported';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
