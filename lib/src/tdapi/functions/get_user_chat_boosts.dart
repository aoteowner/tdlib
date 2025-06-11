import '../tdapi.dart';

class GetUserChatBoosts extends TdFunction {

  /// Returns the list of boosts applied to a chat by a given user; requires administrator rights in the chat; for bots only
  const GetUserChatBoosts({
    required this.chatId,
    required this.userId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;

  /// [userId] Identifier of the user
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "user_id": userId,
      "@extra": extra,
    };
  }
  
  GetUserChatBoosts copyWith({
    int? chatId,
    int? userId,
  }) => GetUserChatBoosts(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'getUserChatBoosts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
