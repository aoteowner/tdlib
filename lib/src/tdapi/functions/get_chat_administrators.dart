import '../tdapi.dart';

class GetChatAdministrators extends TdFunction {
  /// Returns a list of administrators of the chat with their custom titles
  const GetChatAdministrators({
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

  GetChatAdministrators copyWith({
    int? chatId,
  }) {
    return GetChatAdministrators(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getChatAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}
