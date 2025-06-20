import '../tdapi.dart';

class MessageViewer extends TdObject {
  /// Represents a viewer of a message
  const MessageViewer({
    required this.userId,
    required this.viewDate,
  });

  /// [userId] User identifier of the viewer
  final int userId;

  /// [viewDate] Approximate point in time (Unix timestamp) when the message was viewed
  final int viewDate;

  factory MessageViewer.fromJson(Map<String, dynamic> json) => MessageViewer(
        userId: json['user_id'] ?? 0,
        viewDate: json['view_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "view_date": viewDate,
    };
  }

  MessageViewer copyWith({
    int? userId,
    int? viewDate,
  }) {
    return MessageViewer(
      userId: userId ?? this.userId,
      viewDate: viewDate ?? this.viewDate,
    );
  }

  static const CONSTRUCTOR = 'messageViewer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
