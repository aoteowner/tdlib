part of '../tdapi.dart';

class SetChatPaidMessageStarCount extends TdFunction {

  /// Changes the amount of Telegram Stars that must be paid to send a message to a supergroup chat; requires can_restrict_members administrator right and supergroupFullInfo.can_enable_paid_messages
  const SetChatPaidMessageStarCount({
    required this.chatId,
    required this.paidMessageStarCount,
  });
  
  /// [chatId] Identifier of the supergroup chat
  final int chatId;

  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid for each message that is sent to the supergroup chat unless the sender is an administrator of the chat; 0-getOption("paid_message_star_count_max").. The supergroup will receive getOption("paid_message_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for message sending
  final int paidMessageStarCount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "paid_message_star_count": paidMessageStarCount,
      "@extra": extra,
    };
  }
  
  SetChatPaidMessageStarCount copyWith({
    int? chatId,
    int? paidMessageStarCount,
  }) => SetChatPaidMessageStarCount(
    chatId: chatId ?? this.chatId,
    paidMessageStarCount: paidMessageStarCount ?? this.paidMessageStarCount,
  );

  static const CONSTRUCTOR = 'setChatPaidMessageStarCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
