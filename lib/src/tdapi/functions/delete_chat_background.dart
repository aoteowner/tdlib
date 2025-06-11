import '../tdapi.dart';

class DeleteChatBackground extends TdFunction {

  /// Deletes background in a specific chat
  const DeleteChatBackground({
    required this.chatId,
    required this.restorePrevious,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [restorePrevious] Pass true to restore previously set background. Can be used only in private and secret chats with non-deleted users if userFullInfo.set_chat_background == true.. Supposed to be used from messageChatSetBackground messages with the currently set background that was set for both sides by the other user
  final bool restorePrevious;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "restore_previous": restorePrevious,
      "@extra": extra,
    };
  }
  
  DeleteChatBackground copyWith({
    int? chatId,
    bool? restorePrevious,
  }) => DeleteChatBackground(
    chatId: chatId ?? this.chatId,
    restorePrevious: restorePrevious ?? this.restorePrevious,
  );

  static const CONSTRUCTOR = 'deleteChatBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
