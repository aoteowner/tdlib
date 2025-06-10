part of '../tdapi.dart';

class DeleteQuickReplyShortcut extends TdFunction {

  /// Deletes a quick reply shortcut
  const DeleteQuickReplyShortcut({
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
  
  DeleteQuickReplyShortcut copyWith({
    int? shortcutId,
  }) => DeleteQuickReplyShortcut(
    shortcutId: shortcutId ?? this.shortcutId,
  );

  static const CONSTRUCTOR = 'deleteQuickReplyShortcut';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
