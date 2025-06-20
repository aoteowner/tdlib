import '../tdapi.dart';

class LogTags extends TdObject {
  /// Contains a list of available TDLib internal log tags
  const LogTags({
    required this.tags,
    this.extra,
    this.clientId,
  });

  /// [tags] List of log tags
  final List<String> tags;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory LogTags.fromJson(Map<String, dynamic> json) => LogTags(
        tags: json['tags'] == null
            ? <String>[]
            : (json['tags'] as List).map((e) => (e ?? '') as String).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tags": tags,
    };
  }

  LogTags copyWith({
    List<String>? tags,
    dynamic extra,
    int? clientId,
  }) {
    return LogTags(
      tags: tags ?? this.tags,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'logTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
