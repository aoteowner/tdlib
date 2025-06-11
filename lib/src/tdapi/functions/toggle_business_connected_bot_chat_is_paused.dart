import '../tdapi.dart';

class ToggleBusinessConnectedBotChatIsPaused extends TdFunction {

  /// Pauses or resumes the connected business bot in a specific chat
  const ToggleBusinessConnectedBotChatIsPaused({
    required this.chatId,
    required this.isPaused,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [isPaused] Pass true to pause the connected bot in the chat; pass false to resume the bot
  final bool isPaused;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_paused": isPaused,
      "@extra": extra,
    };
  }
  
  ToggleBusinessConnectedBotChatIsPaused copyWith({
    int? chatId,
    bool? isPaused,
  }) => ToggleBusinessConnectedBotChatIsPaused(
    chatId: chatId ?? this.chatId,
    isPaused: isPaused ?? this.isPaused,
  );

  static const CONSTRUCTOR = 'toggleBusinessConnectedBotChatIsPaused';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
