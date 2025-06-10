part of '../tdapi.dart';

class StarGiveawayPaymentOptions extends TdObject {

  /// Contains a list of options for creating of Telegram Star giveaway
  const StarGiveawayPaymentOptions({
    required this.options,
    this.extra,
    this.clientId,
  });
  
  /// [options] The list of options
  final List<StarGiveawayPaymentOption> options;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StarGiveawayPaymentOptions.fromJson(Map<String, dynamic> json) => StarGiveawayPaymentOptions(
    options: List<StarGiveawayPaymentOption>.from((json['options'] ?? []).map((item) => StarGiveawayPaymentOption.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "options": options.map((i) => i.toJson()).toList(),
    };
  }
  
  StarGiveawayPaymentOptions copyWith({
    List<StarGiveawayPaymentOption>? options,
    dynamic extra,
    int? clientId,
  }) => StarGiveawayPaymentOptions(
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'starGiveawayPaymentOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
