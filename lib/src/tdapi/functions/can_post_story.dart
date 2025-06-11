import '../tdapi.dart';

class CanPostStory extends TdFunction {

  /// Checks whether the current user can post a story on behalf of a chat; requires can_post_stories right for supergroup and channel chats
  const CanPostStory({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier. Pass Saved Messages chat identifier when posting a story on behalf of the current user
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  CanPostStory copyWith({
    int? chatId,
  }) => CanPostStory(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'canPostStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
