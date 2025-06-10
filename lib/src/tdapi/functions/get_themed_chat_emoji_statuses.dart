part of '../tdapi.dart';

class GetThemedChatEmojiStatuses extends TdFunction {

  /// Returns up to 8 emoji statuses, which must be shown in the emoji status list for chats
  const GetThemedChatEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetThemedChatEmojiStatuses copyWith() => const GetThemedChatEmojiStatuses();

  static const CONSTRUCTOR = 'getThemedChatEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
