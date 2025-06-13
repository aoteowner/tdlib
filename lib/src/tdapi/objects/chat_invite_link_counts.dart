import '../tdapi.dart';

class ChatInviteLinkCounts extends TdObject {

  /// Contains a list of chat invite link counts
  const ChatInviteLinkCounts({
    required this.inviteLinkCounts,
    this.extra,
    this.clientId,
  });
  
  /// [inviteLinkCounts] List of invite link counts
  final List<ChatInviteLinkCount> inviteLinkCounts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLinkCounts.fromJson(Map<String, dynamic> json) => ChatInviteLinkCounts(
    inviteLinkCounts: json['invite_link_counts'] == null ? [] :(json['invite_link_counts'] as List).map((e) => ChatInviteLinkCount.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link_counts": inviteLinkCounts.map((e) => e.toJson()).toList(),
    };
  }
  
  ChatInviteLinkCounts copyWith({
    List<ChatInviteLinkCount>? inviteLinkCounts,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLinkCounts(
    inviteLinkCounts: inviteLinkCounts ?? this.inviteLinkCounts,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatInviteLinkCounts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
