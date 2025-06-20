import '../tdapi.dart';

class ChatAdministrators extends TdObject {
  /// Represents a list of chat administrators
  const ChatAdministrators({
    required this.administrators,
    this.extra,
    this.clientId,
  });

  /// [administrators] A list of chat administrators
  final List<ChatAdministrator> administrators;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatAdministrators.fromJson(Map<String, dynamic> json) =>
      ChatAdministrators(
        administrators: json['administrators'] == null
            ? <ChatAdministrator>[]
            : (json['administrators'] as List)
                .map((e) => ChatAdministrator.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "administrators": administrators.map((e) => e.toJson()).toList(),
    };
  }

  ChatAdministrators copyWith({
    List<ChatAdministrator>? administrators,
    dynamic extra,
    int? clientId,
  }) {
    return ChatAdministrators(
      administrators: administrators ?? this.administrators,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}
