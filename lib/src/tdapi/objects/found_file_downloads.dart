import '../tdapi.dart';

class FoundFileDownloads extends TdObject {
  /// Contains a list of downloaded files, found by a search
  const FoundFileDownloads({
    required this.totalCounts,
    required this.files,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [totalCounts] Total number of suitable files, ignoring offset
  final DownloadedFileCounts totalCounts;

  /// [files] The list of files
  final List<FileDownload> files;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory FoundFileDownloads.fromJson(Map<String, dynamic> json) =>
      FoundFileDownloads(
        totalCounts: DownloadedFileCounts.fromJson(json['total_counts'] ?? {}),
        files: json['files'] == null
            ? <FileDownload>[]
            : (json['files'] as List)
                .map((e) => FileDownload.fromJson(e ?? {}))
                .toList(),
        nextOffset: json['next_offset'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_counts": totalCounts.toJson(),
      "files": files.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  FoundFileDownloads copyWith({
    DownloadedFileCounts? totalCounts,
    List<FileDownload>? files,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return FoundFileDownloads(
      totalCounts: totalCounts ?? this.totalCounts,
      files: files ?? this.files,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'foundFileDownloads';

  @override
  String getConstructor() => CONSTRUCTOR;
}
