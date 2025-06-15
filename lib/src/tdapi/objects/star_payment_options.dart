import '../tdapi.dart';

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

  factory StarPaymentOptions.fromJson(Map<String, dynamic> json) =>
      StarPaymentOptions(
        options: json['options'] == null
            ? <StarPaymentOption>[]
            : (json['options'] as List)
                .map((e) => StarPaymentOption.fromJson(e ?? {}))
                .toList(),
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

  StarPaymentOptions copyWith({
    List<StarPaymentOption>? options,
    dynamic extra,
    int? clientId,
  }) {
    return StarPaymentOptions(
      options: options ?? this.options,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'starPaymentOptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
