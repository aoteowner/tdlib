part of '../tdapi.dart';

class GetDisallowedChatEmojiStatuses extends TdFunction {

  /// Returns the list of emoji statuses, which can't be used as chat emoji status, even they are from a sticker set with is_allowed_as_chat_emoji_status == true
  const GetDisallowedChatEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetDisallowedChatEmojiStatuses copyWith() => const GetDisallowedChatEmojiStatuses();

  static const CONSTRUCTOR = 'getDisallowedChatEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
