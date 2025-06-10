part of '../tdapi.dart';

class GetChatsToPostStories extends TdFunction {

  /// Returns supergroup and channel chats in which the current user has the right to post stories. The chats must be rechecked with canPostStory before actually trying to post a story there
  const GetChatsToPostStories();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetChatsToPostStories copyWith() => const GetChatsToPostStories();

  static const CONSTRUCTOR = 'getChatsToPostStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
