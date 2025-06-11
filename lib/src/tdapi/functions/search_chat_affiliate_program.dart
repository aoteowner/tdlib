import '../tdapi.dart';

class SearchChatAffiliateProgram extends TdFunction {

  /// Searches a chat with an affiliate program. Returns the chat if found and the program is active
  const SearchChatAffiliateProgram({
    required this.username,
    required this.referrer,
  });
  
  /// [username] Username of the chat
  final String username;

  /// [referrer] The referrer from an internalLinkTypeChatAffiliateProgram link
  final String referrer;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "username": username,
      "referrer": referrer,
      "@extra": extra,
    };
  }
  
  SearchChatAffiliateProgram copyWith({
    String? username,
    String? referrer,
  }) => SearchChatAffiliateProgram(
    username: username ?? this.username,
    referrer: referrer ?? this.referrer,
  );

  static const CONSTRUCTOR = 'searchChatAffiliateProgram';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
