import '../tdapi.dart';

class GetChatRevenueStatistics extends TdFunction {

  /// Returns detailed revenue statistics about a chat. Currently, this method can be used only. for channels if supergroupFullInfo.can_get_revenue_statistics == true or bots if userFullInfo.bot_info.can_get_revenue_statistics == true
  const GetChatRevenueStatistics({
    required this.chatId,
    required this.isDark,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_dark": isDark,
      "@extra": extra,
    };
  }
  
  GetChatRevenueStatistics copyWith({
    int? chatId,
    bool? isDark,
  }) => GetChatRevenueStatistics(
    chatId: chatId ?? this.chatId,
    isDark: isDark ?? this.isDark,
  );

  static const CONSTRUCTOR = 'getChatRevenueStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
