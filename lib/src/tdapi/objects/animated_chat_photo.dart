import '../tdapi.dart';

class AnimatedChatPhoto extends TdObject {
  /// Animated variant of a chat photo in MPEG4 format
  const AnimatedChatPhoto({
    required this.length,
    required this.file,
    required this.mainFrameTimestamp,
  });

  /// [length] Animation width and height
  final int length;

  /// [file] Information about the animation file
  final File file;

  /// [mainFrameTimestamp] Timestamp of the frame, used as a static chat photo
  final double mainFrameTimestamp;

  factory AnimatedChatPhoto.fromJson(Map<String, dynamic> json) =>
      AnimatedChatPhoto(
        length: json['length'] ?? 0,
        file: File.fromJson(json['file'] ?? {}),
        mainFrameTimestamp: json['main_frame_timestamp'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "length": length,
      "file": file.toJson(),
      "main_frame_timestamp": mainFrameTimestamp,
    };
  }

  AnimatedChatPhoto copyWith({
    int? length,
    File? file,
    double? mainFrameTimestamp,
  }) {
    return AnimatedChatPhoto(
      length: length ?? this.length,
      file: file ?? this.file,
      mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp,
    );
  }

  static const CONSTRUCTOR = 'animatedChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
