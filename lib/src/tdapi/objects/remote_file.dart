import '../tdapi.dart';

class RemoteFile extends TdObject {
  /// Represents a remote file
  const RemoteFile({
    required this.id,
    required this.uniqueId,
    required this.isUploadingActive,
    required this.isUploadingCompleted,
    required this.uploadedSize,
  });

  /// [id] Remote file identifier; may be empty. Can be used by the current user across application restarts or even from other devices. Uniquely identifies a file, but a file can have a lot of different valid identifiers.. If the identifier starts with "http://" or "https://", it represents the HTTP URL of the file. TDLib is currently unable to download files if only their URL is known.. If downloadFile/addFileToDownloads is called on such a file or if it is sent to a secret chat, TDLib starts a file generation process by sending updateFileGenerationStart to the application with the HTTP URL in the original_path and "#url#" as the conversion string.. Application must generate the file by downloading it to the specified location
  final String id;

  /// [uniqueId] Unique file identifier; may be empty if unknown. The unique file identifier which is the same for the same file even for different users and is persistent over time
  final String uniqueId;

  /// [isUploadingActive] True, if the file is currently being uploaded (or a remote copy is being generated by some other means)
  final bool isUploadingActive;

  /// [isUploadingCompleted] True, if a remote copy is fully available
  final bool isUploadingCompleted;

  /// [uploadedSize] Size of the remote available part of the file, in bytes; 0 if unknown
  final int uploadedSize;

  factory RemoteFile.fromJson(Map<String, dynamic> json) => RemoteFile(
        id: json['id'] ?? '',
        uniqueId: json['unique_id'] ?? '',
        isUploadingActive: json['is_uploading_active'] ?? false,
        isUploadingCompleted: json['is_uploading_completed'] ?? false,
        uploadedSize: json['uploaded_size'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "unique_id": uniqueId,
      "is_uploading_active": isUploadingActive,
      "is_uploading_completed": isUploadingCompleted,
      "uploaded_size": uploadedSize,
    };
  }

  RemoteFile copyWith({
    String? id,
    String? uniqueId,
    bool? isUploadingActive,
    bool? isUploadingCompleted,
    int? uploadedSize,
  }) {
    return RemoteFile(
      id: id ?? this.id,
      uniqueId: uniqueId ?? this.uniqueId,
      isUploadingActive: isUploadingActive ?? this.isUploadingActive,
      isUploadingCompleted: isUploadingCompleted ?? this.isUploadingCompleted,
      uploadedSize: uploadedSize ?? this.uploadedSize,
    );
  }

  static const CONSTRUCTOR = 'remoteFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
