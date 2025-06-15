import '../tdapi.dart';

class SearchPublicStoriesByLocation extends TdFunction {
  /// Searches for public stories by the given address location. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  const SearchPublicStoriesByLocation({
    required this.address,
    required this.offset,
    required this.limit,
  });

  /// [address] Address of the location
  final LocationAddress address;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of stories to be returned; up to 100. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "address": address.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  SearchPublicStoriesByLocation copyWith({
    LocationAddress? address,
    String? offset,
    int? limit,
  }) {
    return SearchPublicStoriesByLocation(
      address: address ?? this.address,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'searchPublicStoriesByLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
