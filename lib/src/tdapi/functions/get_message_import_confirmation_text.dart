import '../tdapi.dart';

class GetMessageImportConfirmationText extends TdFunction {
  /// Returns a confirmation text to be shown to the user before starting message import
  const GetMessageImportConfirmationText({
    required this.chatId,
  });

  /// [chatId] Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info member right
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  GetMessageImportConfirmationText copyWith({
    int? chatId,
  }) {
    return GetMessageImportConfirmationText(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getMessageImportConfirmationText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
