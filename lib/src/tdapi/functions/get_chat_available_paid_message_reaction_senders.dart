import '../tdapi.dart';

class GetChatAvailablePaidMessageReactionSenders extends TdFunction {
  /// Returns the list of message sender identifiers, which can be used to send a paid reaction in a chat
  const GetChatAvailablePaidMessageReactionSenders({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  GetChatAvailablePaidMessageReactionSenders copyWith({
    int? chatId,
  }) {
    return GetChatAvailablePaidMessageReactionSenders(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getChatAvailablePaidMessageReactionSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
