import '../tdapi.dart';

class AvailableGifts extends TdObject {

  /// Contains a list of gifts that can be sent to another user or channel chat
  const AvailableGifts({
    required this.gifts,
    this.extra,
    this.clientId,
  });
  
  /// [gifts] The list of gifts
  final List<AvailableGift> gifts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AvailableGifts.fromJson(Map<String, dynamic> json) => AvailableGifts(
    gifts: json['gifts'] == null ? [] :(json['gifts'] as List).map((e) => AvailableGift.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gifts": gifts.map((e) => e.toJson()).toList(),
    };
  }
  
  AvailableGifts copyWith({
    List<AvailableGift>? gifts,
    dynamic extra,
    int? clientId,
  }) => AvailableGifts(
    gifts: gifts ?? this.gifts,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'availableGifts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
