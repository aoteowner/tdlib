part of '../tdapi.dart';

class ReceivedGifts extends TdObject {

  /// Represents a list of gifts received by a user or a chat
  const ReceivedGifts({
    required this.totalCount,
    required this.gifts,
    required this.areNotificationsEnabled,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] The total number of received gifts
  final int totalCount;

  /// [gifts] The list of gifts
  final List<ReceivedGift> gifts;

  /// [areNotificationsEnabled] True, if notifications about new gifts of the owner are enabled
  final bool areNotificationsEnabled;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ReceivedGifts.fromJson(Map<String, dynamic> json) => ReceivedGifts(
    totalCount: json['total_count'],
    gifts: List<ReceivedGift>.from((json['gifts'] ?? []).map((item) => ReceivedGift.fromJson(item)).toList()),
    areNotificationsEnabled: json['are_notifications_enabled'],
    nextOffset: json['next_offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "gifts": gifts.map((i) => i.toJson()).toList(),
      "are_notifications_enabled": areNotificationsEnabled,
      "next_offset": nextOffset,
    };
  }
  
  ReceivedGifts copyWith({
    int? totalCount,
    List<ReceivedGift>? gifts,
    bool? areNotificationsEnabled,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => ReceivedGifts(
    totalCount: totalCount ?? this.totalCount,
    gifts: gifts ?? this.gifts,
    areNotificationsEnabled: areNotificationsEnabled ?? this.areNotificationsEnabled,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'receivedGifts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
