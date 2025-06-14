import '../tdapi.dart';

class Notification extends TdObject {
  /// Contains information about a notification
  const Notification({
    required this.id,
    required this.date,
    required this.isSilent,
    required this.type,
  });

  /// [id] Unique persistent identifier of this notification
  final int id;

  /// [date] Notification date
  final int date;

  /// [isSilent] True, if the notification was explicitly sent without sound
  final bool isSilent;

  /// [type] Notification type
  final NotificationType type;

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        id: json['id'] ?? 0,
        date: json['date'] ?? 0,
        isSilent: json['is_silent'] ?? false,
        type: NotificationType.fromJson(json['type'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "date": date,
      "is_silent": isSilent,
      "type": type.toJson(),
    };
  }

  Notification copyWith({
    int? id,
    int? date,
    bool? isSilent,
    NotificationType? type,
  }) {
    return Notification(
      id: id ?? this.id,
      date: date ?? this.date,
      isSilent: isSilent ?? this.isSilent,
      type: type ?? this.type,
    );
  }

  static const CONSTRUCTOR = 'notification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
