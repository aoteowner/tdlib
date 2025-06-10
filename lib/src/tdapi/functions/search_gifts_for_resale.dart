part of '../tdapi.dart';

class SearchGiftsForResale extends TdFunction {

  /// Returns upgraded gifts that can be bought from other owners
  const SearchGiftsForResale({
    required this.giftId,
    required this.order,
    required this.attributes,
    required this.offset,
    required this.limit,
  });
  
  /// [giftId] Identifier of the regular gift that was upgraded to a unique gift
  final int giftId;

  /// [order] Order in which the results will be sorted
  final GiftForResaleOrder order;

  /// [attributes] Attributes used to filter received gifts. If multiple attributes of the same type are specified, then all of them are allowed.. If none attributes of specific type are specified, then all values for this attribute type are allowed
  final List<UpgradedGiftAttributeId> attributes;

  /// [offset] Offset of the first entry to return as received from the previous request with the same order and attributes; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of gifts to return
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift_id": giftId,
      "order": order.toJson(),
      "attributes": attributes.map((i) => i.toJson()).toList(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchGiftsForResale copyWith({
    int? giftId,
    GiftForResaleOrder? order,
    List<UpgradedGiftAttributeId>? attributes,
    String? offset,
    int? limit,
  }) => SearchGiftsForResale(
    giftId: giftId ?? this.giftId,
    order: order ?? this.order,
    attributes: attributes ?? this.attributes,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchGiftsForResale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
