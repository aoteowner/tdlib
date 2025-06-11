import '../tdapi.dart';

class ReorderQuickReplyShortcuts extends TdFunction {

  /// Changes the order of quick reply shortcuts
  const ReorderQuickReplyShortcuts({
    required this.shortcutIds,
  });
  
  /// [shortcutIds] The new order of quick reply shortcuts
  final List<int> shortcutIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_ids": shortcutIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ReorderQuickReplyShortcuts copyWith({
    List<int>? shortcutIds,
  }) => ReorderQuickReplyShortcuts(
    shortcutIds: shortcutIds ?? this.shortcutIds,
  );

  static const CONSTRUCTOR = 'reorderQuickReplyShortcuts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
