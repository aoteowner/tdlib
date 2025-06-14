import '../tdapi.dart';

class DatedFile extends TdObject {
  /// File with the date it was uploaded
  const DatedFile({
    required this.file,
    required this.date,
  });

  /// [file] The file
  final File file;

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  final int date;

  factory DatedFile.fromJson(Map<String, dynamic> json) => DatedFile(
        file: File.fromJson(json['file'] ?? {}),
        date: json['date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file": file.toJson(),
      "date": date,
    };
  }

  DatedFile copyWith({
    File? file,
    int? date,
  }) {
    return DatedFile(
      file: file ?? this.file,
      date: date ?? this.date,
    );
  }

  static const CONSTRUCTOR = 'datedFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
