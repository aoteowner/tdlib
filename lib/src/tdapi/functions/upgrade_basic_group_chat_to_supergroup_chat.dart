import '../tdapi.dart';

class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  /// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires owner privileges. Deactivates the original basic group
  const UpgradeBasicGroupChatToSupergroupChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat to upgrade
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  UpgradeBasicGroupChatToSupergroupChat copyWith({
    int? chatId,
  }) {
    return UpgradeBasicGroupChatToSupergroupChat(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
