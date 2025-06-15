import '../tdapi.dart';

class AddPendingPaidMessageReaction extends TdFunction {
  /// Adds the paid message reaction to a message. Use getMessageAvailableReactions to check whether the reaction is available for the message
  const AddPendingPaidMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.starCount,
    this.type,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [starCount] Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_reaction_star_count_max")
  final int starCount;

  /// [type] Type of the paid reaction; pass null if the user didn't choose reaction type explicitly, for example, the reaction is set from the message bubble
  final PaidReactionType? type;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "star_count": starCount,
      "type": type?.toJson(),
      "@extra": extra,
    };
  }

  AddPendingPaidMessageReaction copyWith({
    int? chatId,
    int? messageId,
    int? starCount,
    PaidReactionType? type,
  }) {
    return AddPendingPaidMessageReaction(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      starCount: starCount ?? this.starCount,
      type: type ?? this.type,
    );
  }

  static const CONSTRUCTOR = 'addPendingPaidMessageReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
