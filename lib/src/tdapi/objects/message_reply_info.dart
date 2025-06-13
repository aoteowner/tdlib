import '../tdapi.dart';

class MessageReplyInfo extends TdObject {

  /// Contains information about replies to a message
  const MessageReplyInfo({
    required this.replyCount,
    required this.recentReplierIds,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.lastMessageId,
  });
  
  /// [replyCount] Number of times the message was directly or indirectly replied
  final int replyCount;

  /// [recentReplierIds] Identifiers of at most 3 recent repliers to the message; available in channels with a discussion supergroup. The users and chats are expected to be inaccessible: only their photo and name will be available
  final List<MessageSender> recentReplierIds;

  /// [lastReadInboxMessageId] Identifier of the last read incoming reply to the message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing reply to the message
  final int lastReadOutboxMessageId;

  /// [lastMessageId] Identifier of the last reply to the message
  final int lastMessageId;
  
  /// Parse from a json
  factory MessageReplyInfo.fromJson(Map<String, dynamic> json) => MessageReplyInfo(
    replyCount: json['reply_count'] ?? 0,
    recentReplierIds: json['recent_replier_ids'] == null ? [] :(json['recent_replier_ids'] as List).map((e) => MessageSender.fromJson(e ?? {})).toList(),
    lastReadInboxMessageId: json['last_read_inbox_message_id'] ?? 0,
    lastReadOutboxMessageId: json['last_read_outbox_message_id'] ?? 0,
    lastMessageId: json['last_message_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reply_count": replyCount,
      "recent_replier_ids": recentReplierIds.map((e) => e.toJson()).toList(),
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
      "last_message_id": lastMessageId,
    };
  }
  
  MessageReplyInfo copyWith({
    int? replyCount,
    List<MessageSender>? recentReplierIds,
    int? lastReadInboxMessageId,
    int? lastReadOutboxMessageId,
    int? lastMessageId,
  }) => MessageReplyInfo(
    replyCount: replyCount ?? this.replyCount,
    recentReplierIds: recentReplierIds ?? this.recentReplierIds,
    lastReadInboxMessageId: lastReadInboxMessageId ?? this.lastReadInboxMessageId,
    lastReadOutboxMessageId: lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
    lastMessageId: lastMessageId ?? this.lastMessageId,
  );

  static const CONSTRUCTOR = 'messageReplyInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
