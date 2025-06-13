import '../tdapi.dart';

class FactCheck extends TdObject {

  /// Describes a fact-check added to the message by an independent checker
  const FactCheck({
    required this.text,
    required this.countryCode,
  });
  
  /// [text] Text of the fact-check
  final FormattedText text;

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code of the country for which the fact-check is shown
  final String countryCode;
  
  /// Parse from a json
  factory FactCheck.fromJson(Map<String, dynamic> json) => FactCheck(
    text: FormattedText.fromJson(json['text'] ?? {}),
    countryCode: json['country_code'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "country_code": countryCode,
    };
  }
  
  FactCheck copyWith({
    FormattedText? text,
    String? countryCode,
  }) => FactCheck(
    text: text ?? this.text,
    countryCode: countryCode ?? this.countryCode,
  );

  static const CONSTRUCTOR = 'factCheck';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
