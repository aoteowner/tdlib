import '../tdapi.dart';

class GetDefaultChatEmojiStatuses extends TdFunction {

  /// Returns default emoji statuses for chats
  const GetDefaultChatEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetDefaultChatEmojiStatuses copyWith() => const GetDefaultChatEmojiStatuses();

  static const CONSTRUCTOR = 'getDefaultChatEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
