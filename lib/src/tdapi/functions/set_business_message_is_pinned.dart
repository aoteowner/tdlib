import '../tdapi.dart';

class SetBusinessMessageIsPinned extends TdFunction {
  /// Pins or unpins a message sent on behalf of a business account; for bots only
  const SetBusinessMessageIsPinned({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    required this.isPinned,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [isPinned] Pass true to pin the message, pass false to unpin it
  final bool isPinned;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "message_id": messageId,
      "is_pinned": isPinned,
      "@extra": extra,
    };
  }

  SetBusinessMessageIsPinned copyWith({
    String? businessConnectionId,
    int? chatId,
    int? messageId,
    bool? isPinned,
  }) {
    return SetBusinessMessageIsPinned(
      businessConnectionId: businessConnectionId ?? this.businessConnectionId,
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'setBusinessMessageIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
