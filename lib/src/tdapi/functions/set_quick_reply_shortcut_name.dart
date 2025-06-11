import '../tdapi.dart';

class SetQuickReplyShortcutName extends TdFunction {

  /// Changes name of a quick reply shortcut
  const SetQuickReplyShortcutName({
    required this.shortcutId,
    required this.name,
  });
  
  /// [shortcutId] Unique identifier of the quick reply shortcut 
  final int shortcutId;

  /// [name] New name for the shortcut. Use checkQuickReplyShortcutName to check its validness
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
      "name": name,
      "@extra": extra,
    };
  }
  
  SetQuickReplyShortcutName copyWith({
    int? shortcutId,
    String? name,
  }) => SetQuickReplyShortcutName(
    shortcutId: shortcutId ?? this.shortcutId,
    name: name ?? this.name,
  );

  static const CONSTRUCTOR = 'setQuickReplyShortcutName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
