import '../tdapi.dart';

class PremiumGiveawayPaymentOptions extends TdObject {

  /// Contains a list of options for creating of Telegram Premium giveaway or manual distribution of Telegram Premium among chat members
  const PremiumGiveawayPaymentOptions({
    required this.options,
    this.extra,
    this.clientId,
  });
  
  /// [options] The list of options
  final List<PremiumGiveawayPaymentOption> options;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PremiumGiveawayPaymentOptions.fromJson(Map<String, dynamic> json) => PremiumGiveawayPaymentOptions(
    options: json['options'] == null ? [] :(json['options'] as List).map((e) => PremiumGiveawayPaymentOption.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "options": options.map((e) => e.toJson()).toList(),
    };
  }
  
  PremiumGiveawayPaymentOptions copyWith({
    List<PremiumGiveawayPaymentOption>? options,
    dynamic extra,
    int? clientId,
  }) => PremiumGiveawayPaymentOptions(
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'premiumGiveawayPaymentOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
