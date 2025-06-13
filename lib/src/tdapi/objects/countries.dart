import '../tdapi.dart';

class Countries extends TdObject {

  /// Contains information about countries
  const Countries({
    required this.countries,
    this.extra,
    this.clientId,
  });
  
  /// [countries] The list of countries
  final List<CountryInfo> countries;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Countries.fromJson(Map<String, dynamic> json) => Countries(
    countries: json['countries'] == null ? <CountryInfo>[] :(json['countries'] as List).map((e) => CountryInfo.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "countries": countries.map((e) => e.toJson()).toList(),
    };
  }
  
  Countries copyWith({
    List<CountryInfo>? countries,
    dynamic extra,
    int? clientId,
  }) => Countries(
    countries: countries ?? this.countries,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'countries';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
