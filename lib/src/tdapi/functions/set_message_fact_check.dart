import '../tdapi.dart';

class SetMessageFactCheck extends TdFunction {

  /// Changes the fact-check of a message. Can be only used if messageProperties.can_set_fact_check == true
  const SetMessageFactCheck({
    required this.chatId,
    required this.messageId,
    this.text,
  });
  
  /// [chatId] The channel chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [text] New text of the fact-check; 0-getOption("fact_check_length_max") characters; pass null to remove it. Only Bold, Italic, and TextUrl entities with https://t.me/ links are supported
  final FormattedText? text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "text": text?.toJson(),
      "@extra": extra,
    };
  }
  
  SetMessageFactCheck copyWith({
    int? chatId,
    int? messageId,
    FormattedText? text,
  }) => SetMessageFactCheck(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'setMessageFactCheck';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
