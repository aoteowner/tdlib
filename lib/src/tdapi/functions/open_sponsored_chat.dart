import '../tdapi.dart';

class OpenSponsoredChat extends TdFunction {

  /// Informs TDLib that the user opened a sponsored chat
  const OpenSponsoredChat({
    required this.sponsoredChatUniqueId,
  });
  
  /// [sponsoredChatUniqueId] Unique identifier of the sponsored chat
  final int sponsoredChatUniqueId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sponsored_chat_unique_id": sponsoredChatUniqueId,
      "@extra": extra,
    };
  }
  
  OpenSponsoredChat copyWith({
    int? sponsoredChatUniqueId,
  }) => OpenSponsoredChat(
    sponsoredChatUniqueId: sponsoredChatUniqueId ?? this.sponsoredChatUniqueId,
  );

  static const CONSTRUCTOR = 'openSponsoredChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
