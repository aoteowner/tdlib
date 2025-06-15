import '../tdapi.dart';

class ChatBoostLink extends TdObject {
  /// Contains an HTTPS link to boost a chat
  const ChatBoostLink({
    required this.link,
    required this.isPublic,
    this.extra,
    this.clientId,
  });

  /// [link] The link
  final String link;

  /// [isPublic] True, if the link will work for non-members of the chat
  final bool isPublic;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatBoostLink.fromJson(Map<String, dynamic> json) => ChatBoostLink(
        link: json['link'] ?? '',
        isPublic: json['is_public'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
      "is_public": isPublic,
    };
  }

  ChatBoostLink copyWith({
    String? link,
    bool? isPublic,
    dynamic extra,
    int? clientId,
  }) {
    return ChatBoostLink(
      link: link ?? this.link,
      isPublic: isPublic ?? this.isPublic,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatBoostLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
