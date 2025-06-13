import '../tdapi.dart';

class CollectibleItemInfo extends TdObject {

  /// Contains information about a collectible item and its last purchase
  const CollectibleItemInfo({
    required this.purchaseDate,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// [purchaseDate] Point in time (Unix timestamp) when the item was purchased
  final int purchaseDate;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the item
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the cryptocurrency
  final int cryptocurrencyAmount;

  /// [url] Individual URL for the item on https://fragment.com
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CollectibleItemInfo.fromJson(Map<String, dynamic> json) => CollectibleItemInfo(
    purchaseDate: json['purchase_date'] ?? 0,
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    cryptocurrency: json['cryptocurrency'] ?? '',
    cryptocurrencyAmount: int.tryParse(json['cryptocurrency_amount'] ?? '') ?? 0,
    url: json['url'] ?? '',
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "purchase_date": purchaseDate,
      "currency": currency,
      "amount": amount,
      "cryptocurrency": cryptocurrency,
      "cryptocurrency_amount": cryptocurrencyAmount,
      "url": url,
    };
  }
  
  CollectibleItemInfo copyWith({
    int? purchaseDate,
    String? currency,
    int? amount,
    String? cryptocurrency,
    int? cryptocurrencyAmount,
    String? url,
    dynamic extra,
    int? clientId,
  }) => CollectibleItemInfo(
    purchaseDate: purchaseDate ?? this.purchaseDate,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    cryptocurrency: cryptocurrency ?? this.cryptocurrency,
    cryptocurrencyAmount: cryptocurrencyAmount ?? this.cryptocurrencyAmount,
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'collectibleItemInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
