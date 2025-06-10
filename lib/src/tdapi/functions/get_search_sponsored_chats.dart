part of '../tdapi.dart';

class GetSearchSponsoredChats extends TdFunction {

  /// Returns sponsored chats to be shown in the search results
  const GetSearchSponsoredChats({
    required this.query,
  });
  
  /// [query] Query the user searches for
  final String query;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
      "@extra": extra,
    };
  }
  
  GetSearchSponsoredChats copyWith({
    String? query,
  }) => GetSearchSponsoredChats(
    query: query ?? this.query,
  );

  static const CONSTRUCTOR = 'getSearchSponsoredChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
