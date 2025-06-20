import '../tdapi.dart';

class PreliminaryUploadFile extends TdFunction {
  /// Preliminary uploads a file to the cloud before sending it in a message, which can be useful for uploading of being recorded voice and video notes.. In all other cases there is no need to preliminary upload a file. Updates updateFile will be used to notify about upload progress.. The upload will not be completed until the file is sent in a message
  const PreliminaryUploadFile({
    required this.file,
    this.fileType,
    required this.priority,
  });

  /// [file] File to upload
  final InputFile file;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;

  /// [priority] Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be uploaded first
  final int priority;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file": file.toJson(),
      "file_type": fileType?.toJson(),
      "priority": priority,
      "@extra": extra,
    };
  }

  PreliminaryUploadFile copyWith({
    InputFile? file,
    FileType? fileType,
    int? priority,
  }) {
    return PreliminaryUploadFile(
      file: file ?? this.file,
      fileType: fileType ?? this.fileType,
      priority: priority ?? this.priority,
    );
  }

  static const CONSTRUCTOR = 'preliminaryUploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
