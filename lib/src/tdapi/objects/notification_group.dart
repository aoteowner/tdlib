import '../tdapi.dart';

class NotificationGroup extends TdObject {
  /// Describes a group of notifications
  const NotificationGroup({
    required this.id,
    required this.type,
    required this.chatId,
    required this.totalCount,
    required this.notifications,
  });

  /// [id] Unique persistent auto-incremented from 1 identifier of the notification group
  final int id;

  /// [type] Type of the group
  final NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// [totalCount] Total number of active notifications in the group
  final int totalCount;

  /// [notifications] The list of active notifications
  final List<Notification> notifications;

  factory NotificationGroup.fromJson(Map<String, dynamic> json) =>
      NotificationGroup(
        id: json['id'] ?? 0,
        type: NotificationGroupType.fromJson(json['type'] ?? {}),
        chatId: json['chat_id'] ?? 0,
        totalCount: json['total_count'] ?? 0,
        notifications: json['notifications'] == null
            ? <Notification>[]
            : (json['notifications'] as List)
                .map((e) => Notification.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "type": type.toJson(),
      "chat_id": chatId,
      "total_count": totalCount,
      "notifications": notifications.map((e) => e.toJson()).toList(),
    };
  }

  NotificationGroup copyWith({
    int? id,
    NotificationGroupType? type,
    int? chatId,
    int? totalCount,
    List<Notification>? notifications,
  }) {
    return NotificationGroup(
      id: id ?? this.id,
      type: type ?? this.type,
      chatId: chatId ?? this.chatId,
      totalCount: totalCount ?? this.totalCount,
      notifications: notifications ?? this.notifications,
    );
  }

  static const CONSTRUCTOR = 'notificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
