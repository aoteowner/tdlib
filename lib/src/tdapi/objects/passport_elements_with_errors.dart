import '../tdapi.dart';

class PassportElementsWithErrors extends TdObject {

  /// Contains information about a Telegram Passport elements and corresponding errors
  const PassportElementsWithErrors({
    required this.elements,
    required this.errors,
    this.extra,
    this.clientId,
  });
  
  /// [elements] Telegram Passport elements 
  final List<PassportElement> elements;

  /// [errors] Errors in the elements that are already available
  final List<PassportElementError> errors;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementsWithErrors.fromJson(Map<String, dynamic> json) => PassportElementsWithErrors(
    elements: json['elements'] == null ? [] :(json['elements'] as List).map((e) => PassportElement.fromJson(e ?? {})).toList(),
    errors: json['errors'] == null ? [] :(json['errors'] as List).map((e) => PassportElementError.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "elements": elements.map((e) => e.toJson()).toList(),
      "errors": errors.map((e) => e.toJson()).toList(),
    };
  }
  
  PassportElementsWithErrors copyWith({
    List<PassportElement>? elements,
    List<PassportElementError>? errors,
    dynamic extra,
    int? clientId,
  }) => PassportElementsWithErrors(
    elements: elements ?? this.elements,
    errors: errors ?? this.errors,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementsWithErrors';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
