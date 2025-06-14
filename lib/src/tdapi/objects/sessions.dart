import '../tdapi.dart';

class Sessions extends TdObject {
  /// Contains a list of sessions
  const Sessions({
    required this.sessions,
    required this.inactiveSessionTtlDays,
    this.extra,
    this.clientId,
  });

  /// [sessions] List of sessions
  final List<Session> sessions;

  /// [inactiveSessionTtlDays] Number of days of inactivity before sessions will automatically be terminated; 1-366 days
  final int inactiveSessionTtlDays;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Sessions.fromJson(Map<String, dynamic> json) => Sessions(
        sessions: json['sessions'] == null
            ? <Session>[]
            : (json['sessions'] as List)
                .map((e) => Session.fromJson(e ?? {}))
                .toList(),
        inactiveSessionTtlDays: json['inactive_session_ttl_days'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sessions": sessions.map((e) => e.toJson()).toList(),
      "inactive_session_ttl_days": inactiveSessionTtlDays,
    };
  }

  Sessions copyWith({
    List<Session>? sessions,
    int? inactiveSessionTtlDays,
    dynamic extra,
    int? clientId,
  }) {
    return Sessions(
      sessions: sessions ?? this.sessions,
      inactiveSessionTtlDays:
          inactiveSessionTtlDays ?? this.inactiveSessionTtlDays,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'sessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
