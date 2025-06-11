import '../tdapi.dart';

class GetChatRevenueWithdrawalUrl extends TdFunction {

  /// Returns a URL for chat revenue withdrawal; requires owner privileges in the channel chat or the bot. Currently, this method can be used only. if getOption("can_withdraw_chat_revenue") for channels with supergroupFullInfo.can_get_revenue_statistics == true or bots with userFullInfo.bot_info.can_get_revenue_statistics == true
  const GetChatRevenueWithdrawalUrl({
    required this.chatId,
    required this.password,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [password] The 2-step verification password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "password": password,
      "@extra": extra,
    };
  }
  
  GetChatRevenueWithdrawalUrl copyWith({
    int? chatId,
    String? password,
  }) => GetChatRevenueWithdrawalUrl(
    chatId: chatId ?? this.chatId,
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'getChatRevenueWithdrawalUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
