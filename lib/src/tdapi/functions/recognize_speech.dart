import '../tdapi.dart';

class RecognizeSpeech extends TdFunction {

  /// Recognizes speech in a video note or a voice note message
  const RecognizeSpeech({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_recognize_speech to check whether the message is suitable
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }
  
  RecognizeSpeech copyWith({
    int? chatId,
    int? messageId,
  }) => RecognizeSpeech(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'recognizeSpeech';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
