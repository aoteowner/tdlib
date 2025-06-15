import '../tdapi.dart';

class ChatStatisticsInteractionInfo extends TdObject {
  /// Contains statistics about interactions with a message sent in the chat or a story posted on behalf of the chat
  const ChatStatisticsInteractionInfo({
    required this.objectType,
    required this.viewCount,
    required this.forwardCount,
    required this.reactionCount,
  });

  /// [objectType] Type of the object
  final ChatStatisticsObjectType objectType;

  /// [viewCount] Number of times the object was viewed
  final int viewCount;

  /// [forwardCount] Number of times the object was forwarded
  final int forwardCount;

  /// [reactionCount] Number of times reactions were added to the object
  final int reactionCount;

  factory ChatStatisticsInteractionInfo.fromJson(Map<String, dynamic> json) =>
      ChatStatisticsInteractionInfo(
        objectType:
            ChatStatisticsObjectType.fromJson(json['object_type'] ?? {}),
        viewCount: json['view_count'] ?? 0,
        forwardCount: json['forward_count'] ?? 0,
        reactionCount: json['reaction_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "object_type": objectType.toJson(),
      "view_count": viewCount,
      "forward_count": forwardCount,
      "reaction_count": reactionCount,
    };
  }

  ChatStatisticsInteractionInfo copyWith({
    ChatStatisticsObjectType? objectType,
    int? viewCount,
    int? forwardCount,
    int? reactionCount,
  }) {
    return ChatStatisticsInteractionInfo(
      objectType: objectType ?? this.objectType,
      viewCount: viewCount ?? this.viewCount,
      forwardCount: forwardCount ?? this.forwardCount,
      reactionCount: reactionCount ?? this.reactionCount,
    );
  }

  static const CONSTRUCTOR = 'chatStatisticsInteractionInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
