part of '../tdapi.dart';

class ToggleChatGiftNotifications extends TdFunction {

  /// Toggles whether notifications for new gifts received by a channel chat are sent to the current user; requires can_post_messages administrator right in the chat
  const ToggleChatGiftNotifications({
    required this.chatId,
    required this.areEnabled,
  });
  
  /// [chatId] Identifier of the channel chat
  final int chatId;

  /// [areEnabled] Pass true to enable notifications about new gifts owned by the channel chat; pass false to disable the notifications
  final bool areEnabled;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "are_enabled": areEnabled,
      "@extra": extra,
    };
  }
  
  ToggleChatGiftNotifications copyWith({
    int? chatId,
    bool? areEnabled,
  }) => ToggleChatGiftNotifications(
    chatId: chatId ?? this.chatId,
    areEnabled: areEnabled ?? this.areEnabled,
  );

  static const CONSTRUCTOR = 'toggleChatGiftNotifications';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
