import '../tdapi.dart';

class ChatFolderInviteLink extends TdObject {
  /// Contains a chat folder invite link
  const ChatFolderInviteLink({
    required this.inviteLink,
    required this.name,
    required this.chatIds,
    this.extra,
    this.clientId,
  });

  /// [inviteLink] The chat folder invite link
  final String inviteLink;

  /// [name] Name of the link
  final String name;

  /// [chatIds] Identifiers of chats, included in the link
  final List<int> chatIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatFolderInviteLink.fromJson(Map<String, dynamic> json) =>
      ChatFolderInviteLink(
        inviteLink: json['invite_link'] ?? '',
        name: json['name'] ?? '',
        chatIds: json['chat_ids'] == null
            ? <int>[]
            : (json['chat_ids'] as List).map((e) => (e ?? 0) as int).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
      "name": name,
      "chat_ids": chatIds,
    };
  }

  ChatFolderInviteLink copyWith({
    String? inviteLink,
    String? name,
    List<int>? chatIds,
    dynamic extra,
    int? clientId,
  }) {
    return ChatFolderInviteLink(
      inviteLink: inviteLink ?? this.inviteLink,
      name: name ?? this.name,
      chatIds: chatIds ?? this.chatIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatFolderInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
