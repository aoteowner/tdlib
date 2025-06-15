import '../tdapi.dart';

class GetChatSimilarChats extends TdFunction {
  /// Returns a list of chats similar to the given chat
  const GetChatSimilarChats({
    required this.chatId,
  });

  /// [chatId] Identifier of the target chat; must be an identifier of a channel chat
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  GetChatSimilarChats copyWith({
    int? chatId,
  }) {
    return GetChatSimilarChats(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getChatSimilarChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
