import '../tdapi.dart';

class GetRecentEmojiStatuses extends TdFunction {
  /// Returns recent emoji statuses for self status
  const GetRecentEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetRecentEmojiStatuses copyWith() {
    return const GetRecentEmojiStatuses();
  }

  static const CONSTRUCTOR = 'getRecentEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
