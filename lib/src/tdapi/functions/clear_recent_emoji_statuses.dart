import '../tdapi.dart';

class ClearRecentEmojiStatuses extends TdFunction {
  /// Clears the list of recently used emoji statuses for self status
  const ClearRecentEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClearRecentEmojiStatuses copyWith() {
    return const ClearRecentEmojiStatuses();
  }

  static const CONSTRUCTOR = 'clearRecentEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
