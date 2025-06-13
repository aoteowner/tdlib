import '../tdapi.dart';

class PremiumGiftPaymentOptions extends TdObject {

  /// Contains a list of options for gifting Telegram Premium to a user
  const PremiumGiftPaymentOptions({
    required this.options,
    this.extra,
    this.clientId,
  });
  
  /// [options] The list of options sorted by Telegram Premium subscription duration
  final List<PremiumGiftPaymentOption> options;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PremiumGiftPaymentOptions.fromJson(Map<String, dynamic> json) => PremiumGiftPaymentOptions(
    options: json['options'] == null ? [] :(json['options'] as List).map((e) => PremiumGiftPaymentOption.fromJson(e ?? {})).toList(),
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
  
  PremiumGiftPaymentOptions copyWith({
    List<PremiumGiftPaymentOption>? options,
    dynamic extra,
    int? clientId,
  }) => PremiumGiftPaymentOptions(
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'premiumGiftPaymentOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
