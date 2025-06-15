import '../tdapi.dart';

class GetChatBoostLink extends TdFunction {
  /// Returns an HTTPS link to boost the specified supergroup or channel chat
  const GetChatBoostLink({
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

  GetChatBoostLink copyWith({
    int? chatId,
  }) {
    return GetChatBoostLink(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getChatBoostLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
