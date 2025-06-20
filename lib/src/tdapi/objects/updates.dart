import '../tdapi.dart';

class Updates extends TdObject {
  /// Contains a list of updates
  const Updates({
    required this.updates,
    this.extra,
    this.clientId,
  });

  /// [updates] List of updates
  final List<Update> updates;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Updates.fromJson(Map<String, dynamic> json) => Updates(
        updates: json['updates'] == null
            ? <Update>[]
            : (json['updates'] as List)
                .map((e) => Update.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "updates": updates.map((e) => e.toJson()).toList(),
    };
  }

  Updates copyWith({
    List<Update>? updates,
    dynamic extra,
    int? clientId,
  }) {
    return Updates(
      updates: updates ?? this.updates,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updates';

  @override
  String getConstructor() => CONSTRUCTOR;
}
