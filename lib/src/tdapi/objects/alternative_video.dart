import '../tdapi.dart';

class AlternativeVideo extends TdObject {

  /// Describes an alternative re-encoded quality of a video file
  const AlternativeVideo({
    required this.id,
    required this.width,
    required this.height,
    required this.codec,
    required this.hlsFile,
    required this.video,
  });
  
  /// [id] Unique identifier of the alternative video, which is used in the HLS file
  final int id;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [codec] Codec used for video file encoding, for example, "h264", "h265", or "av1"
  final String codec;

  /// [hlsFile] HLS file describing the video
  final File hlsFile;

  /// [video] File containing the video
  final File video;
  
  /// Parse from a json
  factory AlternativeVideo.fromJson(Map<String, dynamic> json) => AlternativeVideo(
    id: int.tryParse(json['id'] ?? '') ?? 0,
    width: json['width'] ?? 0,
    height: json['height'] ?? 0,
    codec: json['codec'] ?? '',
    hlsFile: File.fromJson(json['hls_file'] ?? {}),
    video: File.fromJson(json['video'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "width": width,
      "height": height,
      "codec": codec,
      "hls_file": hlsFile.toJson(),
      "video": video.toJson(),
    };
  }
  
  AlternativeVideo copyWith({
    int? id,
    int? width,
    int? height,
    String? codec,
    File? hlsFile,
    File? video,
  }) => AlternativeVideo(
    id: id ?? this.id,
    width: width ?? this.width,
    height: height ?? this.height,
    codec: codec ?? this.codec,
    hlsFile: hlsFile ?? this.hlsFile,
    video: video ?? this.video,
  );

  static const CONSTRUCTOR = 'alternativeVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
