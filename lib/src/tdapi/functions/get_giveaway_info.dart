part of '../tdapi.dart';

class GetGiveawayInfo extends TdFunction {

  /// Returns information about a giveaway
  const GetGiveawayInfo({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the channel chat which started the giveaway
  final int chatId;

  /// [messageId] Identifier of the giveaway or a giveaway winners message in the chat
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }
  
  GetGiveawayInfo copyWith({
    int? chatId,
    int? messageId,
  }) => GetGiveawayInfo(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'getGiveawayInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
