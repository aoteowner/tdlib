import '../tdapi.dart';

class SavedMessagesTags extends TdObject {
  /// Contains a list of tags used in Saved Messages
  const SavedMessagesTags({
    required this.tags,
    this.extra,
    this.clientId,
  });

  /// [tags] List of tags
  final List<SavedMessagesTag> tags;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory SavedMessagesTags.fromJson(Map<String, dynamic> json) =>
      SavedMessagesTags(
        tags: json['tags'] == null
            ? <SavedMessagesTag>[]
            : (json['tags'] as List)
                .map((e) => SavedMessagesTag.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tags": tags.map((e) => e.toJson()).toList(),
    };
  }

  SavedMessagesTags copyWith({
    List<SavedMessagesTag>? tags,
    dynamic extra,
    int? clientId,
  }) {
    return SavedMessagesTags(
      tags: tags ?? this.tags,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'savedMessagesTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
