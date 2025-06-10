part of '../tdapi.dart';

class GetChatRevenueTransactions extends TdFunction {

  /// Returns the list of revenue transactions for a chat. Currently, this method can be used only. for channels if supergroupFullInfo.can_get_revenue_statistics == true or bots if userFullInfo.bot_info.can_get_revenue_statistics == true
  const GetChatRevenueTransactions({
    required this.chatId,
    required this.offset,
    required this.limit,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [offset] Number of transactions to skip
  final int offset;

  /// [limit] The maximum number of transactions to be returned; up to 200
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatRevenueTransactions copyWith({
    int? chatId,
    int? offset,
    int? limit,
  }) => GetChatRevenueTransactions(
    chatId: chatId ?? this.chatId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatRevenueTransactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
