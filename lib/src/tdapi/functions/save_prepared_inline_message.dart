import '../tdapi.dart';

class SavePreparedInlineMessage extends TdFunction {
  /// Saves an inline message to be sent by the given user; for bots only
  const SavePreparedInlineMessage({
    required this.userId,
    required this.result,
    required this.chatTypes,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [result] The description of the message
  final InputInlineQueryResult result;

  /// [chatTypes] Types of the chats to which the message can be sent
  final TargetChatTypes chatTypes;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "result": result.toJson(),
      "chat_types": chatTypes.toJson(),
      "@extra": extra,
    };
  }

  SavePreparedInlineMessage copyWith({
    int? userId,
    InputInlineQueryResult? result,
    TargetChatTypes? chatTypes,
  }) {
    return SavePreparedInlineMessage(
      userId: userId ?? this.userId,
      result: result ?? this.result,
      chatTypes: chatTypes ?? this.chatTypes,
    );
  }

  static const CONSTRUCTOR = 'savePreparedInlineMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
