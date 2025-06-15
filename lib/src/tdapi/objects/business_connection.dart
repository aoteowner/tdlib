import '../tdapi.dart';

class BusinessConnection extends TdObject {
  /// Describes a connection of the bot with a business account
  const BusinessConnection({
    required this.id,
    required this.userId,
    required this.userChatId,
    required this.date,
    this.rights,
    required this.isEnabled,
    this.extra,
    this.clientId,
  });

  /// [id] Unique identifier of the connection
  final String id;

  /// [userId] Identifier of the business user that created the connection
  final int userId;

  /// [userChatId] Chat identifier of the private chat with the user
  final int userChatId;

  /// [date] Point in time (Unix timestamp) when the connection was established
  final int date;

  /// [rights] Rights of the bot; may be null if the connection was disabled
  final BusinessBotRights? rights;

  /// [isEnabled] True, if the connection is enabled; false otherwise
  final bool isEnabled;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory BusinessConnection.fromJson(Map<String, dynamic> json) =>
      BusinessConnection(
        id: json['id'] ?? '',
        userId: json['user_id'] ?? 0,
        userChatId: json['user_chat_id'] ?? 0,
        date: json['date'] ?? 0,
        rights: BusinessBotRights.fromJson(json['rights'] ?? {}),
        isEnabled: json['is_enabled'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "user_id": userId,
      "user_chat_id": userChatId,
      "date": date,
      "rights": rights?.toJson(),
      "is_enabled": isEnabled,
    };
  }

  BusinessConnection copyWith({
    String? id,
    int? userId,
    int? userChatId,
    int? date,
    BusinessBotRights? rights,
    bool? isEnabled,
    dynamic extra,
    int? clientId,
  }) {
    return BusinessConnection(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      userChatId: userChatId ?? this.userChatId,
      date: date ?? this.date,
      rights: rights ?? this.rights,
      isEnabled: isEnabled ?? this.isEnabled,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'businessConnection';

  @override
  String getConstructor() => CONSTRUCTOR;
}
