part of '../tdapi.dart';

class CheckQuickReplyShortcutName extends TdFunction {

  /// Checks validness of a name for a quick reply shortcut. Can be called synchronously
  const CheckQuickReplyShortcutName({
    required this.name,
  });
  
  /// [name] The name of the shortcut; 1-32 characters
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }
  
  CheckQuickReplyShortcutName copyWith({
    String? name,
  }) => CheckQuickReplyShortcutName(
    name: name ?? this.name,
  );

  static const CONSTRUCTOR = 'checkQuickReplyShortcutName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
