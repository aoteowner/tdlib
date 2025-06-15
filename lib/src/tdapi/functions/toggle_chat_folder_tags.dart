import '../tdapi.dart';

class ToggleChatFolderTags extends TdFunction {
  /// Toggles whether chat folder tags are enabled
  const ToggleChatFolderTags({
    required this.areTagsEnabled,
  });

  /// [areTagsEnabled] Pass true to enable folder tags; pass false to disable them
  final bool areTagsEnabled;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "are_tags_enabled": areTagsEnabled,
      "@extra": extra,
    };
  }

  ToggleChatFolderTags copyWith({
    bool? areTagsEnabled,
  }) {
    return ToggleChatFolderTags(
      areTagsEnabled: areTagsEnabled ?? this.areTagsEnabled,
    );
  }

  static const CONSTRUCTOR = 'toggleChatFolderTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
