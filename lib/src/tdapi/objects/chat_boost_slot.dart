import '../tdapi.dart';

class ChatBoostSlot extends TdObject {
  /// Describes a slot for chat boost
  const ChatBoostSlot({
    required this.slotId,
    required this.currentlyBoostedChatId,
    required this.startDate,
    required this.expirationDate,
    required this.cooldownUntilDate,
  });

  /// [slotId] Unique identifier of the slot
  final int slotId;

  /// [currentlyBoostedChatId] Identifier of the currently boosted chat; 0 if none
  final int currentlyBoostedChatId;

  /// [startDate] Point in time (Unix timestamp) when the chat was boosted; 0 if none
  final int startDate;

  /// [expirationDate] Point in time (Unix timestamp) when the boost will expire
  final int expirationDate;

  /// [cooldownUntilDate] Point in time (Unix timestamp) after which the boost can be used for another chat
  final int cooldownUntilDate;

  factory ChatBoostSlot.fromJson(Map<String, dynamic> json) => ChatBoostSlot(
        slotId: json['slot_id'] ?? 0,
        currentlyBoostedChatId: json['currently_boosted_chat_id'] ?? 0,
        startDate: json['start_date'] ?? 0,
        expirationDate: json['expiration_date'] ?? 0,
        cooldownUntilDate: json['cooldown_until_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "slot_id": slotId,
      "currently_boosted_chat_id": currentlyBoostedChatId,
      "start_date": startDate,
      "expiration_date": expirationDate,
      "cooldown_until_date": cooldownUntilDate,
    };
  }

  ChatBoostSlot copyWith({
    int? slotId,
    int? currentlyBoostedChatId,
    int? startDate,
    int? expirationDate,
    int? cooldownUntilDate,
  }) {
    return ChatBoostSlot(
      slotId: slotId ?? this.slotId,
      currentlyBoostedChatId:
          currentlyBoostedChatId ?? this.currentlyBoostedChatId,
      startDate: startDate ?? this.startDate,
      expirationDate: expirationDate ?? this.expirationDate,
      cooldownUntilDate: cooldownUntilDate ?? this.cooldownUntilDate,
    );
  }

  static const CONSTRUCTOR = 'chatBoostSlot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
