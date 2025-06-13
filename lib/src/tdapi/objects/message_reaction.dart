import '../tdapi.dart';

class MessageReaction extends TdObject {

  /// Contains information about a reaction to a message
  const MessageReaction({
    required this.type,
    required this.totalCount,
    required this.isChosen,
    this.usedSenderId,
    required this.recentSenderIds,
  });
  
  /// [type] Type of the reaction
  final ReactionType type;

  /// [totalCount] Number of times the reaction was added
  final int totalCount;

  /// [isChosen] True, if the reaction is chosen by the current user
  final bool isChosen;

  /// [usedSenderId] Identifier of the message sender used by the current user to add the reaction; may be null if unknown or the reaction isn't chosen
  final MessageSender? usedSenderId;

  /// [recentSenderIds] Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats
  final List<MessageSender> recentSenderIds;
  
  /// Parse from a json
  factory MessageReaction.fromJson(Map<String, dynamic> json) => MessageReaction(
    type: ReactionType.fromJson(json['type'] ?? {}),
    totalCount: json['total_count'] ?? 0,
    isChosen: json['is_chosen'] ?? false,
    usedSenderId: MessageSender.fromJson(json['used_sender_id'] ?? {}),
    recentSenderIds: json['recent_sender_ids'] == null ? <MessageSender>[] :(json['recent_sender_ids'] as List).map((e) => MessageSender.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "total_count": totalCount,
      "is_chosen": isChosen,
      "used_sender_id": usedSenderId?.toJson(),
      "recent_sender_ids": recentSenderIds.map((e) => e.toJson()).toList(),
    };
  }
  
  MessageReaction copyWith({
    ReactionType? type,
    int? totalCount,
    bool? isChosen,
    MessageSender? usedSenderId,
    List<MessageSender>? recentSenderIds,
  }) => MessageReaction(
    type: type ?? this.type,
    totalCount: totalCount ?? this.totalCount,
    isChosen: isChosen ?? this.isChosen,
    usedSenderId: usedSenderId ?? this.usedSenderId,
    recentSenderIds: recentSenderIds ?? this.recentSenderIds,
  );

  static const CONSTRUCTOR = 'messageReaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
