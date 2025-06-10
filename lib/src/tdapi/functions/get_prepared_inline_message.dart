part of '../tdapi.dart';

class GetPreparedInlineMessage extends TdFunction {

  /// Saves an inline message to be sent by the given user
  const GetPreparedInlineMessage({
    required this.botUserId,
    required this.preparedMessageId,
  });
  
  /// [botUserId] Identifier of the bot that created the message
  final int botUserId;

  /// [preparedMessageId] Identifier of the prepared message
  final String preparedMessageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "prepared_message_id": preparedMessageId,
      "@extra": extra,
    };
  }
  
  GetPreparedInlineMessage copyWith({
    int? botUserId,
    String? preparedMessageId,
  }) => GetPreparedInlineMessage(
    botUserId: botUserId ?? this.botUserId,
    preparedMessageId: preparedMessageId ?? this.preparedMessageId,
  );

  static const CONSTRUCTOR = 'getPreparedInlineMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
