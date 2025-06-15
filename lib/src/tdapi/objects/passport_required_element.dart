import '../tdapi.dart';

class PassportRequiredElement extends TdObject {
  /// Contains a description of the required Telegram Passport element that was requested by a service
  const PassportRequiredElement({
    required this.suitableElements,
  });

  /// [suitableElements] List of Telegram Passport elements any of which is enough to provide
  final List<PassportSuitableElement> suitableElements;

  factory PassportRequiredElement.fromJson(Map<String, dynamic> json) =>
      PassportRequiredElement(
        suitableElements: json['suitable_elements'] == null
            ? <PassportSuitableElement>[]
            : (json['suitable_elements'] as List)
                .map((e) => PassportSuitableElement.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "suitable_elements": suitableElements.map((e) => e.toJson()).toList(),
    };
  }

  PassportRequiredElement copyWith({
    List<PassportSuitableElement>? suitableElements,
  }) {
    return PassportRequiredElement(
      suitableElements: suitableElements ?? this.suitableElements,
    );
  }

  static const CONSTRUCTOR = 'passportRequiredElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
