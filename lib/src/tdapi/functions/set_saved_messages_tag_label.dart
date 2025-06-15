import '../tdapi.dart';

class SetSavedMessagesTagLabel extends TdFunction {
  /// Changes label of a Saved Messages tag; for Telegram Premium users only
  const SetSavedMessagesTagLabel({
    required this.tag,
    required this.label,
  });

  /// [tag] The tag which label will be changed
  final ReactionType tag;

  /// [label] New label for the tag; 0-12 characters
  final String label;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tag": tag.toJson(),
      "label": label,
      "@extra": extra,
    };
  }

  SetSavedMessagesTagLabel copyWith({
    ReactionType? tag,
    String? label,
  }) {
    return SetSavedMessagesTagLabel(
      tag: tag ?? this.tag,
      label: label ?? this.label,
    );
  }

  static const CONSTRUCTOR = 'setSavedMessagesTagLabel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
