import '../tdapi.dart';

class GetForumTopicDefaultIcons extends TdFunction {
  /// Returns the list of custom emoji, which can be used as forum topic icon by all users
  const GetForumTopicDefaultIcons();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetForumTopicDefaultIcons copyWith() {
    return const GetForumTopicDefaultIcons();
  }

  static const CONSTRUCTOR = 'getForumTopicDefaultIcons';

  @override
  String getConstructor() => CONSTRUCTOR;
}
