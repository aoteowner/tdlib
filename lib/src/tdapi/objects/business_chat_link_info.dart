part of '../tdapi.dart';

class BusinessChatLinkInfo extends TdObject {

  /// Contains information about a business chat link
  const BusinessChatLinkInfo({
    required this.chatId,
    required this.text,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Identifier of the private chat that created the link
  final int chatId;

  /// [text] Message draft text that must be added to the input field
  final FormattedText text;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BusinessChatLinkInfo.fromJson(Map<String, dynamic> json) => BusinessChatLinkInfo(
    chatId: json['chat_id'],
    text: FormattedText.fromJson(json['text']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "text": text.toJson(),
    };
  }
  
  BusinessChatLinkInfo copyWith({
    int? chatId,
    FormattedText? text,
    dynamic extra,
    int? clientId,
  }) => BusinessChatLinkInfo(
    chatId: chatId ?? this.chatId,
    text: text ?? this.text,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'businessChatLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
