part of '../tdapi.dart';

class SavedMessagesTopic extends TdObject {

  /// Contains information about a Saved Messages topic
  const SavedMessagesTopic({
    required this.id,
    required this.type,
    required this.isPinned,
    required this.order,
    this.lastMessage,
    this.draftMessage,
  });
  
  /// [id] Unique topic identifier
  final int id;

  /// [type] Type of the topic
  final SavedMessagesTopicType type;

  /// [isPinned] True, if the topic is pinned
  final bool isPinned;

  /// [order] A parameter used to determine order of the topic in the topic list. Topics must be sorted by the order in descending order
  final int order;

  /// [lastMessage] Last message in the topic; may be null if none or unknown
  final Message? lastMessage;

  /// [draftMessage] A draft of a message in the topic; may be null if none
  final DraftMessage? draftMessage;
  
  /// Parse from a json
  factory SavedMessagesTopic.fromJson(Map<String, dynamic> json) => SavedMessagesTopic(
    id: json['id'],
    type: SavedMessagesTopicType.fromJson(json['type']),
    isPinned: json['is_pinned'],
    order: int.parse(json['order']),
    lastMessage: json['last_message'] == null ? null : Message.fromJson(json['last_message']),
    draftMessage: json['draft_message'] == null ? null : DraftMessage.fromJson(json['draft_message']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "type": type.toJson(),
      "is_pinned": isPinned,
      "order": order,
      "last_message": lastMessage?.toJson(),
      "draft_message": draftMessage?.toJson(),
    };
  }
  
  SavedMessagesTopic copyWith({
    int? id,
    SavedMessagesTopicType? type,
    bool? isPinned,
    int? order,
    Message? lastMessage,
    DraftMessage? draftMessage,
  }) => SavedMessagesTopic(
    id: id ?? this.id,
    type: type ?? this.type,
    isPinned: isPinned ?? this.isPinned,
    order: order ?? this.order,
    lastMessage: lastMessage ?? this.lastMessage,
    draftMessage: draftMessage ?? this.draftMessage,
  );

  static const CONSTRUCTOR = 'savedMessagesTopic';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
