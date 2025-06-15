import '../tdapi.dart';

class Chats extends TdObject {
  /// Represents a list of chats
  const Chats({
    required this.totalCount,
    required this.chatIds,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of chats found
  final int totalCount;

  /// [chatIds] List of chat identifiers
  final List<int> chatIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Chats.fromJson(Map<String, dynamic> json) => Chats(
        totalCount: json['total_count'] ?? 0,
        chatIds: json['chat_ids'] == null
            ? <int>[]
            : (json['chat_ids'] as List).map((e) => (e ?? 0) as int).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "chat_ids": chatIds,
    };
  }

  Chats copyWith({
    int? totalCount,
    List<int>? chatIds,
    dynamic extra,
    int? clientId,
  }) {
    return Chats(
      totalCount: totalCount ?? this.totalCount,
      chatIds: chatIds ?? this.chatIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
