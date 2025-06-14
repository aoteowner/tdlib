import '../tdapi.dart';

class ChatAdministrator extends TdObject {
  /// Contains information about a chat administrator
  const ChatAdministrator({
    required this.userId,
    required this.customTitle,
    required this.isOwner,
  });

  /// [userId] User identifier of the administrator
  final int userId;

  /// [customTitle] Custom title of the administrator
  final String customTitle;

  /// [isOwner] True, if the user is the owner of the chat
  final bool isOwner;

  factory ChatAdministrator.fromJson(Map<String, dynamic> json) =>
      ChatAdministrator(
        userId: json['user_id'] ?? 0,
        customTitle: json['custom_title'] ?? '',
        isOwner: json['is_owner'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "custom_title": customTitle,
      "is_owner": isOwner,
    };
  }

  ChatAdministrator copyWith({
    int? userId,
    String? customTitle,
    bool? isOwner,
  }) {
    return ChatAdministrator(
      userId: userId ?? this.userId,
      customTitle: customTitle ?? this.customTitle,
      isOwner: isOwner ?? this.isOwner,
    );
  }

  static const CONSTRUCTOR = 'chatAdministrator';

  @override
  String getConstructor() => CONSTRUCTOR;
}
