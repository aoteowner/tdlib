import '../tdapi.dart';

class MessageThreadInfo extends TdObject {
  /// Contains information about a message thread
  const MessageThreadInfo({
    required this.chatId,
    required this.messageThreadId,
    this.replyInfo,
    required this.unreadMessageCount,
    required this.messages,
    this.draftMessage,
    this.extra,
    this.clientId,
  });

  /// [chatId] Identifier of the chat to which the message thread belongs
  final int chatId;

  /// [messageThreadId] Message thread identifier, unique within the chat
  final int messageThreadId;

  /// [replyInfo] Information about the message thread; may be null for forum topic threads
  final MessageReplyInfo? replyInfo;

  /// [unreadMessageCount] Approximate number of unread messages in the message thread
  final int unreadMessageCount;

  /// [messages] The messages from which the thread starts. The messages are returned in reverse chronological order (i.e., in order of decreasing message_id)
  final List<Message> messages;

  /// [draftMessage] A draft of a message in the message thread; may be null if none
  final DraftMessage? draftMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory MessageThreadInfo.fromJson(Map<String, dynamic> json) =>
      MessageThreadInfo(
        chatId: json['chat_id'] ?? 0,
        messageThreadId: json['message_thread_id'] ?? 0,
        replyInfo: MessageReplyInfo.fromJson(json['reply_info'] ?? {}),
        unreadMessageCount: json['unread_message_count'] ?? 0,
        messages: json['messages'] == null
            ? <Message>[]
            : (json['messages'] as List)
                .map((e) => Message.fromJson(e ?? {}))
                .toList(),
        draftMessage: DraftMessage.fromJson(json['draft_message'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_info": replyInfo?.toJson(),
      "unread_message_count": unreadMessageCount,
      "messages": messages.map((e) => e.toJson()).toList(),
      "draft_message": draftMessage?.toJson(),
    };
  }

  MessageThreadInfo copyWith({
    int? chatId,
    int? messageThreadId,
    MessageReplyInfo? replyInfo,
    int? unreadMessageCount,
    List<Message>? messages,
    DraftMessage? draftMessage,
    dynamic extra,
    int? clientId,
  }) {
    return MessageThreadInfo(
      chatId: chatId ?? this.chatId,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      replyInfo: replyInfo ?? this.replyInfo,
      unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
      messages: messages ?? this.messages,
      draftMessage: draftMessage ?? this.draftMessage,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'messageThreadInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
