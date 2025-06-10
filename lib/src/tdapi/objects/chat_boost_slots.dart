part of '../tdapi.dart';

class ChatBoostSlots extends TdObject {

  /// Contains a list of chat boost slots
  const ChatBoostSlots({
    required this.slots,
    this.extra,
    this.clientId,
  });
  
  /// [slots] List of boost slots
  final List<ChatBoostSlot> slots;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatBoostSlots.fromJson(Map<String, dynamic> json) => ChatBoostSlots(
    slots: List<ChatBoostSlot>.from((json['slots'] ?? []).map((item) => ChatBoostSlot.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "slots": slots.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatBoostSlots copyWith({
    List<ChatBoostSlot>? slots,
    dynamic extra,
    int? clientId,
  }) => ChatBoostSlots(
    slots: slots ?? this.slots,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatBoostSlots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
