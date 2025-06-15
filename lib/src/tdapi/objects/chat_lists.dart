import '../tdapi.dart';

class ChatLists extends TdObject {
  /// Contains a list of chat lists
  const ChatLists({
    required this.chatLists,
    this.extra,
    this.clientId,
  });

  /// [chatLists] List of chat lists
  final List<ChatList> chatLists;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatLists.fromJson(Map<String, dynamic> json) => ChatLists(
        chatLists: json['chat_lists'] == null
            ? <ChatList>[]
            : (json['chat_lists'] as List)
                .map((e) => ChatList.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_lists": chatLists.map((e) => e.toJson()).toList(),
    };
  }

  ChatLists copyWith({
    List<ChatList>? chatLists,
    dynamic extra,
    int? clientId,
  }) {
    return ChatLists(
      chatLists: chatLists ?? this.chatLists,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatLists';

  @override
  String getConstructor() => CONSTRUCTOR;
}
