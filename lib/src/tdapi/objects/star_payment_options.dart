part of '../tdapi.dart';

class StarPaymentOptions extends TdObject {

  /// Contains a list of options for buying Telegram Stars
  const StarPaymentOptions({
    required this.options,
    this.extra,
    this.clientId,
  });
  
  /// [options] The list of options
  final List<StarPaymentOption> options;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StarPaymentOptions.fromJson(Map<String, dynamic> json) => StarPaymentOptions(
    options: List<StarPaymentOption>.from((json['options'] ?? []).map((item) => StarPaymentOption.fromJson(item)).toList()),
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
  
  StarPaymentOptions copyWith({
    List<StarPaymentOption>? options,
    dynamic extra,
    int? clientId,
  }) => StarPaymentOptions(
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'starPaymentOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
