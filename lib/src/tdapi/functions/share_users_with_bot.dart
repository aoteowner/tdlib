part of '../tdapi.dart';

class ShareUsersWithBot extends TdFunction {

  /// Shares users after pressing a keyboardButtonTypeRequestUsers button with the bot
  const ShareUsersWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedUserIds,
    required this.onlyCheck,
  });
  
  /// [chatId] Identifier of the chat with the bot
  final int chatId;

  /// [messageId] Identifier of the message with the button
  final int messageId;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedUserIds] Identifiers of the shared users
  final List<int> sharedUserIds;

  /// [onlyCheck] Pass true to check that the users can be shared by the button instead of actually sharing them
  final bool onlyCheck;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "shared_user_ids": sharedUserIds.map((i) => i).toList(),
      "only_check": onlyCheck,
      "@extra": extra,
    };
  }
  
  ShareUsersWithBot copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    List<int>? sharedUserIds,
    bool? onlyCheck,
  }) => ShareUsersWithBot(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    buttonId: buttonId ?? this.buttonId,
    sharedUserIds: sharedUserIds ?? this.sharedUserIds,
    onlyCheck: onlyCheck ?? this.onlyCheck,
  );

  static const CONSTRUCTOR = 'shareUsersWithBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
