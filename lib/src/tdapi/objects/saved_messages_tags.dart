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
  
  /// Parse from a json
  factory SavedMessagesTags.fromJson(Map<String, dynamic> json) => SavedMessagesTags(
    tags: List<SavedMessagesTag>.from((json['tags'] ?? []).map((item) => SavedMessagesTag.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tags": tags.map((i) => i.toJson()).toList(),
    };
  }
  
  SavedMessagesTags copyWith({
    List<SavedMessagesTag>? tags,
    dynamic extra,
    int? clientId,
  }) => SavedMessagesTags(
    tags: tags ?? this.tags,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'savedMessagesTags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
