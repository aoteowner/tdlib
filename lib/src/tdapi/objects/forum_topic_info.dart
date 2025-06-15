import '../tdapi.dart';

class ForumTopicInfo extends TdObject {
  /// Contains basic information about a forum topic
  const ForumTopicInfo({
    required this.chatId,
    required this.messageThreadId,
    required this.name,
    required this.icon,
    required this.creationDate,
    required this.creatorId,
    required this.isGeneral,
    required this.isOutgoing,
    required this.isClosed,
    required this.isHidden,
    this.extra,
    this.clientId,
  });

  /// [chatId] Identifier of the forum chat to which the topic belongs
  final int chatId;

  /// [messageThreadId] Message thread identifier of the topic
  final int messageThreadId;

  /// [name] Name of the topic
  final String name;

  /// [icon] Icon of the topic
  final ForumTopicIcon icon;

  /// [creationDate] Point in time (Unix timestamp) when the topic was created
  final int creationDate;

  /// [creatorId] Identifier of the creator of the topic
  final MessageSender creatorId;

  /// [isGeneral] True, if the topic is the General topic list
  final bool isGeneral;

  /// [isOutgoing] True, if the topic was created by the current user
  final bool isOutgoing;

  /// [isClosed] True, if the topic is closed
  final bool isClosed;

  /// [isHidden] True, if the topic is hidden above the topic list and closed; for General topic only
  final bool isHidden;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ForumTopicInfo.fromJson(Map<String, dynamic> json) => ForumTopicInfo(
        chatId: json['chat_id'] ?? 0,
        messageThreadId: json['message_thread_id'] ?? 0,
        name: json['name'] ?? '',
        icon: ForumTopicIcon.fromJson(json['icon'] ?? {}),
        creationDate: json['creation_date'] ?? 0,
        creatorId: MessageSender.fromJson(json['creator_id'] ?? {}),
        isGeneral: json['is_general'] ?? false,
        isOutgoing: json['is_outgoing'] ?? false,
        isClosed: json['is_closed'] ?? false,
        isHidden: json['is_hidden'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "name": name,
      "icon": icon.toJson(),
      "creation_date": creationDate,
      "creator_id": creatorId.toJson(),
      "is_general": isGeneral,
      "is_outgoing": isOutgoing,
      "is_closed": isClosed,
      "is_hidden": isHidden,
    };
  }

  ForumTopicInfo copyWith({
    int? chatId,
    int? messageThreadId,
    String? name,
    ForumTopicIcon? icon,
    int? creationDate,
    MessageSender? creatorId,
    bool? isGeneral,
    bool? isOutgoing,
    bool? isClosed,
    bool? isHidden,
    dynamic extra,
    int? clientId,
  }) {
    return ForumTopicInfo(
      chatId: chatId ?? this.chatId,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      creationDate: creationDate ?? this.creationDate,
      creatorId: creatorId ?? this.creatorId,
      isGeneral: isGeneral ?? this.isGeneral,
      isOutgoing: isOutgoing ?? this.isOutgoing,
      isClosed: isClosed ?? this.isClosed,
      isHidden: isHidden ?? this.isHidden,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'forumTopicInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
