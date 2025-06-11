import '../tdapi.dart';

class ReportChatSponsoredMessage extends TdFunction {

  /// Reports a sponsored message to Telegram moderators
  const ReportChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
    required this.optionId,
  });
  
  /// [chatId] Chat identifier of the sponsored message
  final int chatId;

  /// [messageId] Identifier of the sponsored message
  final int messageId;

  /// [optionId] Option identifier chosen by the user; leave empty for the initial request
  final String optionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "option_id": optionId,
      "@extra": extra,
    };
  }
  
  ReportChatSponsoredMessage copyWith({
    int? chatId,
    int? messageId,
    String? optionId,
  }) => ReportChatSponsoredMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    optionId: optionId ?? this.optionId,
  );

  static const CONSTRUCTOR = 'reportChatSponsoredMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
