import '../tdapi.dart';

class MessageInteractionInfo extends TdObject {

  /// Contains information about interactions with a message
  const MessageInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    this.replyInfo,
    this.reactions,
  });
  
  /// [viewCount] Number of times the message was viewed
  final int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  final int forwardCount;

  /// [replyInfo] Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself
  final MessageReplyInfo? replyInfo;

  /// [reactions] The list of reactions or tags added to the message; may be null
  final MessageReactions? reactions;
  
  /// Parse from a json
  factory MessageInteractionInfo.fromJson(Map<String, dynamic> json) => MessageInteractionInfo(
    viewCount: json['view_count'] ?? 0,
    forwardCount: json['forward_count'] ?? 0,
    replyInfo: MessageReplyInfo.fromJson(json['reply_info'] ?? {}),
    reactions: MessageReactions.fromJson(json['reactions'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "view_count": viewCount,
      "forward_count": forwardCount,
      "reply_info": replyInfo?.toJson(),
      "reactions": reactions?.toJson(),
    };
  }
  
  MessageInteractionInfo copyWith({
    int? viewCount,
    int? forwardCount,
    MessageReplyInfo? replyInfo,
    MessageReactions? reactions,
  }) => MessageInteractionInfo(
    viewCount: viewCount ?? this.viewCount,
    forwardCount: forwardCount ?? this.forwardCount,
    replyInfo: replyInfo ?? this.replyInfo,
    reactions: reactions ?? this.reactions,
  );

  static const CONSTRUCTOR = 'messageInteractionInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
