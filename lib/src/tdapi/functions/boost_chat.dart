import '../tdapi.dart';

class BoostChat extends TdFunction {

  /// Boosts a chat and returns the list of available chat boost slots for the current user after the boost
  const BoostChat({
    required this.chatId,
    required this.slotIds,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;

  /// [slotIds] Identifiers of boost slots of the current user from which to apply boosts to the chat
  final List<int> slotIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "slot_ids": slotIds,
      "@extra": extra,
    };
  }
  
  BoostChat copyWith({
    int? chatId,
    List<int>? slotIds,
  }) => BoostChat(
    chatId: chatId ?? this.chatId,
    slotIds: slotIds ?? this.slotIds,
  );

  static const CONSTRUCTOR = 'boostChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
