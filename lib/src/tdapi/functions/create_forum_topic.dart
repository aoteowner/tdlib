import '../tdapi.dart';

class CreateForumTopic extends TdFunction {
  /// Creates a topic in a forum supergroup chat; requires can_manage_topics administrator or can_create_topics member right in the supergroup
  const CreateForumTopic({
    required this.chatId,
    required this.name,
    required this.icon,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [name] Name of the topic; 1-128 characters
  final String name;

  /// [icon] Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned by getForumTopicDefaultIcons
  final ForumTopicIcon icon;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "name": name,
      "icon": icon.toJson(),
      "@extra": extra,
    };
  }

  CreateForumTopic copyWith({
    int? chatId,
    String? name,
    ForumTopicIcon? icon,
  }) {
    return CreateForumTopic(
      chatId: chatId ?? this.chatId,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }

  static const CONSTRUCTOR = 'createForumTopic';

  @override
  String getConstructor() => CONSTRUCTOR;
}
