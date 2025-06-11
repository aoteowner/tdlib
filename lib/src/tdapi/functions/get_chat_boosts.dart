import '../tdapi.dart';

class GetChatBoosts extends TdFunction {

  /// Returns the list of boosts applied to a chat; requires administrator rights in the chat
  const GetChatBoosts({
    required this.chatId,
    required this.onlyGiftCodes,
    required this.offset,
    required this.limit,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;

  /// [onlyGiftCodes] Pass true to receive only boosts received from gift codes and giveaways created by the chat
  final bool onlyGiftCodes;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of boosts to be returned; up to 100. For optimal performance, the number of returned boosts can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "only_gift_codes": onlyGiftCodes,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatBoosts copyWith({
    int? chatId,
    bool? onlyGiftCodes,
    String? offset,
    int? limit,
  }) => GetChatBoosts(
    chatId: chatId ?? this.chatId,
    onlyGiftCodes: onlyGiftCodes ?? this.onlyGiftCodes,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatBoosts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
