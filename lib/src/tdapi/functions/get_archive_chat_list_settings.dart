import '../tdapi.dart';

class GetArchiveChatListSettings extends TdFunction {
  /// Returns settings for automatic moving of chats to and from the Archive chat lists
  const GetArchiveChatListSettings();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetArchiveChatListSettings copyWith() {
    return const GetArchiveChatListSettings();
  }

  static const CONSTRUCTOR = 'getArchiveChatListSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
