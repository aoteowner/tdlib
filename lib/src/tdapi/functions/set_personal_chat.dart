import '../tdapi.dart';

class SetPersonalChat extends TdFunction {

  /// Changes the personal chat of the current user
  const SetPersonalChat({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the new personal chat; pass 0 to remove the chat. Use getSuitablePersonalChats to get suitable chats
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  SetPersonalChat copyWith({
    int? chatId,
  }) => SetPersonalChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'setPersonalChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
