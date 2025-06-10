part of '../tdapi.dart';

class ReportSponsoredChat extends TdFunction {

  /// Reports a sponsored chat to Telegram moderators
  const ReportSponsoredChat({
    required this.sponsoredChatUniqueId,
    required this.optionId,
  });
  
  /// [sponsoredChatUniqueId] Unique identifier of the sponsored chat
  final int sponsoredChatUniqueId;

  /// [optionId] Option identifier chosen by the user; leave empty for the initial request
  final String optionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sponsored_chat_unique_id": sponsoredChatUniqueId,
      "option_id": optionId,
      "@extra": extra,
    };
  }
  
  ReportSponsoredChat copyWith({
    int? sponsoredChatUniqueId,
    String? optionId,
  }) => ReportSponsoredChat(
    sponsoredChatUniqueId: sponsoredChatUniqueId ?? this.sponsoredChatUniqueId,
    optionId: optionId ?? this.optionId,
  );

  static const CONSTRUCTOR = 'reportSponsoredChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
