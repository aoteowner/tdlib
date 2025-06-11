import '../tdapi.dart';

class SetChatAffiliateProgram extends TdFunction {

  /// Changes affiliate program for a bot
  const SetChatAffiliateProgram({
    required this.chatId,
    this.parameters,
  });
  
  /// [chatId] Identifier of the chat with an owned bot for which affiliate program is changed
  final int chatId;

  /// [parameters] Parameters of the affiliate program; pass null to close the currently active program. If there is an active program, then commission and program duration can only be increased.. If the active program is scheduled to be closed, then it can't be changed anymore
  final AffiliateProgramParameters? parameters;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "parameters": parameters?.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatAffiliateProgram copyWith({
    int? chatId,
    AffiliateProgramParameters? parameters,
  }) => SetChatAffiliateProgram(
    chatId: chatId ?? this.chatId,
    parameters: parameters ?? this.parameters,
  );

  static const CONSTRUCTOR = 'setChatAffiliateProgram';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
