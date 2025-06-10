part of '../tdapi.dart';

class SearchPublicStoriesByVenue extends TdFunction {

  /// Searches for public stories from the given venue. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  const SearchPublicStoriesByVenue({
    required this.venueProvider,
    required this.venueId,
    required this.offset,
    required this.limit,
  });
  
  /// [venueProvider] Provider of the venue
  final String venueProvider;

  /// [venueId] Identifier of the venue in the provider database
  final String venueId;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of stories to be returned; up to 100. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "venue_provider": venueProvider,
      "venue_id": venueId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchPublicStoriesByVenue copyWith({
    String? venueProvider,
    String? venueId,
    String? offset,
    int? limit,
  }) => SearchPublicStoriesByVenue(
    venueProvider: venueProvider ?? this.venueProvider,
    venueId: venueId ?? this.venueId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchPublicStoriesByVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
