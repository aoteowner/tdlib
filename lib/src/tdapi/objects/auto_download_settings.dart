import '../tdapi.dart';

class AutoDownloadSettings extends TdObject {
  /// Contains auto-download settings
  const AutoDownloadSettings({
    required this.isAutoDownloadEnabled,
    required this.maxPhotoFileSize,
    required this.maxVideoFileSize,
    required this.maxOtherFileSize,
    required this.videoUploadBitrate,
    required this.preloadLargeVideos,
    required this.preloadNextAudio,
    required this.preloadStories,
    required this.useLessDataForCalls,
  });

  /// [isAutoDownloadEnabled] True, if the auto-download is enabled
  final bool isAutoDownloadEnabled;

  /// [maxPhotoFileSize] The maximum size of a photo file to be auto-downloaded, in bytes
  final int maxPhotoFileSize;

  /// [maxVideoFileSize] The maximum size of a video file to be auto-downloaded, in bytes
  final int maxVideoFileSize;

  /// [maxOtherFileSize] The maximum size of other file types to be auto-downloaded, in bytes
  final int maxOtherFileSize;

  /// [videoUploadBitrate] The maximum suggested bitrate for uploaded videos, in kbit/s
  final int videoUploadBitrate;

  /// [preloadLargeVideos] True, if the beginning of video files needs to be preloaded for instant playback
  final bool preloadLargeVideos;

  /// [preloadNextAudio] True, if the next audio track needs to be preloaded while the user is listening to an audio file
  final bool preloadNextAudio;

  /// [preloadStories] True, if stories needs to be preloaded
  final bool preloadStories;

  /// [useLessDataForCalls] True, if "use less data for calls" option needs to be enabled
  final bool useLessDataForCalls;

  factory AutoDownloadSettings.fromJson(Map<String, dynamic> json) =>
      AutoDownloadSettings(
        isAutoDownloadEnabled: json['is_auto_download_enabled'] ?? false,
        maxPhotoFileSize: json['max_photo_file_size'] ?? 0,
        maxVideoFileSize: json['max_video_file_size'] ?? 0,
        maxOtherFileSize: json['max_other_file_size'] ?? 0,
        videoUploadBitrate: json['video_upload_bitrate'] ?? 0,
        preloadLargeVideos: json['preload_large_videos'] ?? false,
        preloadNextAudio: json['preload_next_audio'] ?? false,
        preloadStories: json['preload_stories'] ?? false,
        useLessDataForCalls: json['use_less_data_for_calls'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_auto_download_enabled": isAutoDownloadEnabled,
      "max_photo_file_size": maxPhotoFileSize,
      "max_video_file_size": maxVideoFileSize,
      "max_other_file_size": maxOtherFileSize,
      "video_upload_bitrate": videoUploadBitrate,
      "preload_large_videos": preloadLargeVideos,
      "preload_next_audio": preloadNextAudio,
      "preload_stories": preloadStories,
      "use_less_data_for_calls": useLessDataForCalls,
    };
  }

  AutoDownloadSettings copyWith({
    bool? isAutoDownloadEnabled,
    int? maxPhotoFileSize,
    int? maxVideoFileSize,
    int? maxOtherFileSize,
    int? videoUploadBitrate,
    bool? preloadLargeVideos,
    bool? preloadNextAudio,
    bool? preloadStories,
    bool? useLessDataForCalls,
  }) {
    return AutoDownloadSettings(
      isAutoDownloadEnabled:
          isAutoDownloadEnabled ?? this.isAutoDownloadEnabled,
      maxPhotoFileSize: maxPhotoFileSize ?? this.maxPhotoFileSize,
      maxVideoFileSize: maxVideoFileSize ?? this.maxVideoFileSize,
      maxOtherFileSize: maxOtherFileSize ?? this.maxOtherFileSize,
      videoUploadBitrate: videoUploadBitrate ?? this.videoUploadBitrate,
      preloadLargeVideos: preloadLargeVideos ?? this.preloadLargeVideos,
      preloadNextAudio: preloadNextAudio ?? this.preloadNextAudio,
      preloadStories: preloadStories ?? this.preloadStories,
      useLessDataForCalls: useLessDataForCalls ?? this.useLessDataForCalls,
    );
  }

  static const CONSTRUCTOR = 'autoDownloadSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
