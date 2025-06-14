import '../tdapi.dart';

class GetThemedEmojiStatuses extends TdFunction {
  /// Returns up to 8 emoji statuses, which must be shown right after the default Premium Badge in the emoji status list for self status
  const GetThemedEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetThemedEmojiStatuses copyWith() {
    return const GetThemedEmojiStatuses();
  }

  static const CONSTRUCTOR = 'getThemedEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
