import '../tdapi.dart';

class GetReceivedGifts extends TdFunction {

  /// Returns gifts received by the given user or chat
  const GetReceivedGifts({
    required this.businessConnectionId,
    required this.ownerId,
    required this.excludeUnsaved,
    required this.excludeSaved,
    required this.excludeUnlimited,
    required this.excludeLimited,
    required this.excludeUpgraded,
    required this.sortByPrice,
    required this.offset,
    required this.limit,
  });
  
  /// [businessConnectionId] Unique identifier of business connection on behalf of which to send the request; for bots only
  final String businessConnectionId;

  /// [ownerId] Identifier of the gift receiver
  final MessageSender ownerId;

  /// [excludeUnsaved] Pass true to exclude gifts that aren't saved to the chat's profile page. Always true for gifts received by other users and channel chats without can_post_messages administrator right
  final bool excludeUnsaved;

  /// [excludeSaved] Pass true to exclude gifts that are saved to the chat's profile page. Always false for gifts received by other users and channel chats without can_post_messages administrator right
  final bool excludeSaved;

  /// [excludeUnlimited] Pass true to exclude gifts that can be purchased unlimited number of times
  final bool excludeUnlimited;

  /// [excludeLimited] Pass true to exclude gifts that can be purchased limited number of times
  final bool excludeLimited;

  /// [excludeUpgraded] Pass true to exclude upgraded gifts
  final bool excludeUpgraded;

  /// [sortByPrice] Pass true to sort results by gift price instead of send date
  final bool sortByPrice;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of gifts to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "owner_id": ownerId.toJson(),
      "exclude_unsaved": excludeUnsaved,
      "exclude_saved": excludeSaved,
      "exclude_unlimited": excludeUnlimited,
      "exclude_limited": excludeLimited,
      "exclude_upgraded": excludeUpgraded,
      "sort_by_price": sortByPrice,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetReceivedGifts copyWith({
    String? businessConnectionId,
    MessageSender? ownerId,
    bool? excludeUnsaved,
    bool? excludeSaved,
    bool? excludeUnlimited,
    bool? excludeLimited,
    bool? excludeUpgraded,
    bool? sortByPrice,
    String? offset,
    int? limit,
  }) => GetReceivedGifts(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    ownerId: ownerId ?? this.ownerId,
    excludeUnsaved: excludeUnsaved ?? this.excludeUnsaved,
    excludeSaved: excludeSaved ?? this.excludeSaved,
    excludeUnlimited: excludeUnlimited ?? this.excludeUnlimited,
    excludeLimited: excludeLimited ?? this.excludeLimited,
    excludeUpgraded: excludeUpgraded ?? this.excludeUpgraded,
    sortByPrice: sortByPrice ?? this.sortByPrice,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getReceivedGifts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
