import '../tdapi.dart';

class ChatInviteLinks extends TdObject {
  /// Contains a list of chat invite links
  const ChatInviteLinks({
    required this.totalCount,
    required this.inviteLinks,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of chat invite links found
  final int totalCount;

  /// [inviteLinks] List of invite links
  final List<ChatInviteLink> inviteLinks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatInviteLinks.fromJson(Map<String, dynamic> json) =>
      ChatInviteLinks(
        totalCount: json['total_count'] ?? 0,
        inviteLinks: json['invite_links'] == null
            ? <ChatInviteLink>[]
            : (json['invite_links'] as List)
                .map((e) => ChatInviteLink.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "invite_links": inviteLinks.map((e) => e.toJson()).toList(),
    };
  }

  ChatInviteLinks copyWith({
    int? totalCount,
    List<ChatInviteLink>? inviteLinks,
    dynamic extra,
    int? clientId,
  }) {
    return ChatInviteLinks(
      totalCount: totalCount ?? this.totalCount,
      inviteLinks: inviteLinks ?? this.inviteLinks,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatInviteLinks';

  @override
  String getConstructor() => CONSTRUCTOR;
}
