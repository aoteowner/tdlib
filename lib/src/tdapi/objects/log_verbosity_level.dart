import '../tdapi.dart';

class LogVerbosityLevel extends TdObject {
  /// Contains a TDLib internal log verbosity level
  const LogVerbosityLevel({
    required this.verbosityLevel,
    this.extra,
    this.clientId,
  });

  /// [verbosityLevel] Log verbosity level
  final int verbosityLevel;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory LogVerbosityLevel.fromJson(Map<String, dynamic> json) =>
      LogVerbosityLevel(
        verbosityLevel: json['verbosity_level'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "verbosity_level": verbosityLevel,
    };
  }

  LogVerbosityLevel copyWith({
    int? verbosityLevel,
    dynamic extra,
    int? clientId,
  }) {
    return LogVerbosityLevel(
      verbosityLevel: verbosityLevel ?? this.verbosityLevel,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'logVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
