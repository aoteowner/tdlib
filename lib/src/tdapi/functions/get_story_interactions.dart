part of '../tdapi.dart';

class GetStoryInteractions extends TdFunction {

  /// Returns interactions with a story. The method can be called only for stories posted on behalf of the current user
  const GetStoryInteractions({
    required this.storyId,
    required this.query,
    required this.onlyContacts,
    required this.preferForwards,
    required this.preferWithReaction,
    required this.offset,
    required this.limit,
  });
  
  /// [storyId] Story identifier
  final int storyId;

  /// [query] Query to search for in names, usernames and titles; may be empty to get all relevant interactions
  final String query;

  /// [onlyContacts] Pass true to get only interactions by contacts; pass false to get all relevant interactions
  final bool onlyContacts;

  /// [preferForwards] Pass true to get forwards and reposts first, then reactions, then other views; pass false to get interactions sorted just by interaction date
  final bool preferForwards;

  /// [preferWithReaction] Pass true to get interactions with reaction first; pass false to get interactions sorted just by interaction date. Ignored if prefer_forwards == true
  final bool preferWithReaction;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of story interactions to return
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "query": query,
      "only_contacts": onlyContacts,
      "prefer_forwards": preferForwards,
      "prefer_with_reaction": preferWithReaction,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetStoryInteractions copyWith({
    int? storyId,
    String? query,
    bool? onlyContacts,
    bool? preferForwards,
    bool? preferWithReaction,
    String? offset,
    int? limit,
  }) => GetStoryInteractions(
    storyId: storyId ?? this.storyId,
    query: query ?? this.query,
    onlyContacts: onlyContacts ?? this.onlyContacts,
    preferForwards: preferForwards ?? this.preferForwards,
    preferWithReaction: preferWithReaction ?? this.preferWithReaction,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getStoryInteractions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
