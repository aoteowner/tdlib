part of '../tdapi.dart';

class ReportChat extends TdFunction {

  /// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported
  const ReportChat({
    required this.chatId,
    required this.optionId,
    required this.messageIds,
    required this.text,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [optionId] Option identifier chosen by the user; leave empty for the initial request
  final String optionId;

  /// [messageIds] Identifiers of reported messages. Use messageProperties.can_report_chat to check whether the message can be reported
  final List<int> messageIds;

  /// [text] Additional report details if asked by the server; 0-1024 characters; leave empty for the initial request
  final String text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "option_id": optionId,
      "message_ids": messageIds.map((i) => i).toList(),
      "text": text,
      "@extra": extra,
    };
  }
  
  ReportChat copyWith({
    int? chatId,
    String? optionId,
    List<int>? messageIds,
    String? text,
  }) => ReportChat(
    chatId: chatId ?? this.chatId,
    optionId: optionId ?? this.optionId,
    messageIds: messageIds ?? this.messageIds,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'reportChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
