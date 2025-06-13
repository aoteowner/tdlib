import '../tdapi.dart';

class PassportElements extends TdObject {

  /// Contains information about saved Telegram Passport elements
  const PassportElements({
    required this.elements,
    this.extra,
    this.clientId,
  });
  
  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElements.fromJson(Map<String, dynamic> json) => PassportElements(
    elements: json['elements'] == null ? <PassportElement>[] :(json['elements'] as List).map((e) => PassportElement.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "elements": elements.map((e) => e.toJson()).toList(),
    };
  }
  
  PassportElements copyWith({
    List<PassportElement>? elements,
    dynamic extra,
    int? clientId,
  }) => PassportElements(
    elements: elements ?? this.elements,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElements';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
