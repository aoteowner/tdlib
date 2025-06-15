import '../tdapi.dart';

class ChatBoostLinkInfo extends TdObject {
  /// Contains information about a link to boost a chat
  const ChatBoostLinkInfo({
    required this.isPublic,
    required this.chatId,
    this.extra,
    this.clientId,
  });

  /// [isPublic] True, if the link will work for non-members of the chat
  final bool isPublic;

  /// [chatId] Identifier of the chat to which the link points; 0 if the chat isn't found
  final int chatId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatBoostLinkInfo.fromJson(Map<String, dynamic> json) =>
      ChatBoostLinkInfo(
        isPublic: json['is_public'] ?? false,
        chatId: json['chat_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_public": isPublic,
      "chat_id": chatId,
    };
  }

  ChatBoostLinkInfo copyWith({
    bool? isPublic,
    int? chatId,
    dynamic extra,
    int? clientId,
  }) {
    return ChatBoostLinkInfo(
      isPublic: isPublic ?? this.isPublic,
      chatId: chatId ?? this.chatId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatBoostLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
