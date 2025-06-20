import '../tdapi.dart';

class InputPaidMediaType extends TdObject {
  /// Describes type of paid media to sent
  const InputPaidMediaType();

  factory InputPaidMediaType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputPaidMediaTypePhoto.CONSTRUCTOR:
        return InputPaidMediaTypePhoto.fromJson(json);
      case InputPaidMediaTypeVideo.CONSTRUCTOR:
        return InputPaidMediaTypeVideo.fromJson(json);
      default:
        return const InputPaidMediaType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputPaidMediaType copyWith() {
    return const InputPaidMediaType();
  }

  static const CONSTRUCTOR = 'inputPaidMediaType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPaidMediaTypePhoto extends InputPaidMediaType {
  /// The media is a photo. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
  const InputPaidMediaTypePhoto();

  factory InputPaidMediaTypePhoto.fromJson(Map<String, dynamic> json) =>
      const InputPaidMediaTypePhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  InputPaidMediaTypePhoto copyWith() {
    return const InputPaidMediaTypePhoto();
  }

  static const CONSTRUCTOR = 'inputPaidMediaTypePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPaidMediaTypeVideo extends InputPaidMediaType {
  /// The media is a video
  const InputPaidMediaTypeVideo({
    this.cover,
    required this.startTimestamp,
    required this.duration,
    required this.supportsStreaming,
  });

  /// [cover] Cover of the video; pass null to skip cover uploading
  final InputFile? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in seconds
  final int startTimestamp;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  factory InputPaidMediaTypeVideo.fromJson(Map<String, dynamic> json) =>
      InputPaidMediaTypeVideo(
        cover: InputFile.fromJson(json['cover'] ?? {}),
        startTimestamp: json['start_timestamp'] ?? 0,
        duration: json['duration'] ?? 0,
        supportsStreaming: json['supports_streaming'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "cover": cover?.toJson(),
      "start_timestamp": startTimestamp,
      "duration": duration,
      "supports_streaming": supportsStreaming,
    };
  }

  @override
  InputPaidMediaTypeVideo copyWith({
    InputFile? cover,
    int? startTimestamp,
    int? duration,
    bool? supportsStreaming,
  }) {
    return InputPaidMediaTypeVideo(
      cover: cover ?? this.cover,
      startTimestamp: startTimestamp ?? this.startTimestamp,
      duration: duration ?? this.duration,
      supportsStreaming: supportsStreaming ?? this.supportsStreaming,
    );
  }

  static const CONSTRUCTOR = 'inputPaidMediaTypeVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
