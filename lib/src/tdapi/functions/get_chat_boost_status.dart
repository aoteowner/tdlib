import '../tdapi.dart';

class GetChatBoostStatus extends TdFunction {

  /// Returns the current boost status for a supergroup or a channel chat
  const GetChatBoostStatus({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetChatBoostStatus copyWith({
    int? chatId,
  }) => GetChatBoostStatus(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'getChatBoostStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
