import '../tdapi.dart';

class GetFile extends TdFunction {
  /// Returns information about a file. This is an offline method
  const GetFile({
    required this.fileId,
  });

  /// [fileId] Identifier of the file to get
  final int fileId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "@extra": extra,
    };
  }

  GetFile copyWith({
    int? fileId,
  }) {
    return GetFile(
      fileId: fileId ?? this.fileId,
    );
  }

  static const CONSTRUCTOR = 'getFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
