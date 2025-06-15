import '../tdapi.dart';

class SavedMessagesTag extends TdObject {
  /// Represents a tag used in Saved Messages or a Saved Messages topic
  const SavedMessagesTag({
    required this.tag,
    required this.label,
    required this.count,
  });

  /// [tag] The tag
  final ReactionType tag;

  /// [label] Label of the tag; 0-12 characters. Always empty if the tag is returned for a Saved Messages topic
  final String label;

  /// [count] Number of times the tag was used; may be 0 if the tag has non-empty label
  final int count;

  factory SavedMessagesTag.fromJson(Map<String, dynamic> json) =>
      SavedMessagesTag(
        tag: ReactionType.fromJson(json['tag'] ?? {}),
        label: json['label'] ?? '',
        count: json['count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tag": tag.toJson(),
      "label": label,
      "count": count,
    };
  }

  SavedMessagesTag copyWith({
    ReactionType? tag,
    String? label,
    int? count,
  }) {
    return SavedMessagesTag(
      tag: tag ?? this.tag,
      label: label ?? this.label,
      count: count ?? this.count,
    );
  }

  static const CONSTRUCTOR = 'savedMessagesTag';

  @override
  String getConstructor() => CONSTRUCTOR;
}
