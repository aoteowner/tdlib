import '../tdapi.dart';

class LoadQuickReplyShortcutMessages extends TdFunction {

  /// Loads quick reply messages that can be sent by a given quick reply shortcut. The loaded messages will be sent through updateQuickReplyShortcutMessages
  const LoadQuickReplyShortcutMessages({
    required this.shortcutId,
  });
  
  /// [shortcutId] Unique identifier of the quick reply shortcut
  final int shortcutId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
      "@extra": extra,
    };
  }
  
  LoadQuickReplyShortcutMessages copyWith({
    int? shortcutId,
  }) => LoadQuickReplyShortcutMessages(
    shortcutId: shortcutId ?? this.shortcutId,
  );

  static const CONSTRUCTOR = 'loadQuickReplyShortcutMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
