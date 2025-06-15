import '../tdapi.dart';

class ChatBoost extends TdObject {
  /// Describes a boost applied to a chat
  const ChatBoost({
    required this.id,
    required this.count,
    required this.source,
    required this.startDate,
    required this.expirationDate,
  });

  /// [id] Unique identifier of the boost
  final String id;

  /// [count] The number of identical boosts applied
  final int count;

  /// [source] Source of the boost
  final ChatBoostSource source;

  /// [startDate] Point in time (Unix timestamp) when the chat was boosted
  final int startDate;

  /// [expirationDate] Point in time (Unix timestamp) when the boost will expire
  final int expirationDate;

  factory ChatBoost.fromJson(Map<String, dynamic> json) => ChatBoost(
        id: json['id'] ?? '',
        count: json['count'] ?? 0,
        source: ChatBoostSource.fromJson(json['source'] ?? {}),
        startDate: json['start_date'] ?? 0,
        expirationDate: json['expiration_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "count": count,
      "source": source.toJson(),
      "start_date": startDate,
      "expiration_date": expirationDate,
    };
  }

  ChatBoost copyWith({
    String? id,
    int? count,
    ChatBoostSource? source,
    int? startDate,
    int? expirationDate,
  }) {
    return ChatBoost(
      id: id ?? this.id,
      count: count ?? this.count,
      source: source ?? this.source,
      startDate: startDate ?? this.startDate,
      expirationDate: expirationDate ?? this.expirationDate,
    );
  }

  static const CONSTRUCTOR = 'chatBoost';

  @override
  String getConstructor() => CONSTRUCTOR;
}
