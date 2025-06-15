import '../tdapi.dart';

class Hashtags extends TdObject {
  /// Contains a list of hashtags
  const Hashtags({
    required this.hashtags,
    this.extra,
    this.clientId,
  });

  /// [hashtags] A list of hashtags
  final List<String> hashtags;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Hashtags.fromJson(Map<String, dynamic> json) => Hashtags(
        hashtags: json['hashtags'] == null
            ? <String>[]
            : (json['hashtags'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "hashtags": hashtags,
    };
  }

  Hashtags copyWith({
    List<String>? hashtags,
    dynamic extra,
    int? clientId,
  }) {
    return Hashtags(
      hashtags: hashtags ?? this.hashtags,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'hashtags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
