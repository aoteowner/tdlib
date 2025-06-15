import '../tdapi.dart';

class AddedReaction extends TdObject {
  /// Represents a reaction applied to a message
  const AddedReaction({
    required this.type,
    required this.senderId,
    required this.isOutgoing,
    required this.date,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [senderId] Identifier of the chat member, applied the reaction
  final MessageSender senderId;

  /// [isOutgoing] True, if the reaction was added by the current user
  final bool isOutgoing;

  /// [date] Point in time (Unix timestamp) when the reaction was added
  final int date;

  factory AddedReaction.fromJson(Map<String, dynamic> json) => AddedReaction(
        type: ReactionType.fromJson(json['type'] ?? {}),
        senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
        isOutgoing: json['is_outgoing'] ?? false,
        date: json['date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "sender_id": senderId.toJson(),
      "is_outgoing": isOutgoing,
      "date": date,
    };
  }

  AddedReaction copyWith({
    ReactionType? type,
    MessageSender? senderId,
    bool? isOutgoing,
    int? date,
  }) {
    return AddedReaction(
      type: type ?? this.type,
      senderId: senderId ?? this.senderId,
      isOutgoing: isOutgoing ?? this.isOutgoing,
      date: date ?? this.date,
    );
  }

  static const CONSTRUCTOR = 'addedReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
