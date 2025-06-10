part of '../tdapi.dart';

class SponsoredChat extends TdObject {

  /// Describes a sponsored chat
  const SponsoredChat({
    required this.uniqueId,
    required this.chatId,
    required this.sponsorInfo,
    required this.additionalInfo,
  });
  
  /// [uniqueId] Unique identifier of this result
  final int uniqueId;

  /// [chatId] Chat identifier
  final int chatId;

  /// [sponsorInfo] Additional optional information about the sponsor to be shown along with the chat
  final String sponsorInfo;

  /// [additionalInfo] If non-empty, additional information about the sponsored chat to be shown along with the chat
  final String additionalInfo;
  
  /// Parse from a json
  factory SponsoredChat.fromJson(Map<String, dynamic> json) => SponsoredChat(
    uniqueId: json['unique_id'],
    chatId: json['chat_id'],
    sponsorInfo: json['sponsor_info'],
    additionalInfo: json['additional_info'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "unique_id": uniqueId,
      "chat_id": chatId,
      "sponsor_info": sponsorInfo,
      "additional_info": additionalInfo,
    };
  }
  
  SponsoredChat copyWith({
    int? uniqueId,
    int? chatId,
    String? sponsorInfo,
    String? additionalInfo,
  }) => SponsoredChat(
    uniqueId: uniqueId ?? this.uniqueId,
    chatId: chatId ?? this.chatId,
    sponsorInfo: sponsorInfo ?? this.sponsorInfo,
    additionalInfo: additionalInfo ?? this.additionalInfo,
  );

  static const CONSTRUCTOR = 'sponsoredChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
