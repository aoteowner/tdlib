import '../tdapi.dart';

class SetChatDraftMessage extends TdFunction {
  /// Changes the draft message in a chat
  const SetChatDraftMessage({
    required this.chatId,
    required this.messageThreadId,
    this.draftMessage,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the draft was changed
  final int messageThreadId;

  /// [draftMessage] New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored
  final DraftMessage? draftMessage;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "draft_message": draftMessage?.toJson(),
      "@extra": extra,
    };
  }

  SetChatDraftMessage copyWith({
    int? chatId,
    int? messageThreadId,
    DraftMessage? draftMessage,
  }) {
    return SetChatDraftMessage(
      chatId: chatId ?? this.chatId,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      draftMessage: draftMessage ?? this.draftMessage,
    );
  }

  static const CONSTRUCTOR = 'setChatDraftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
