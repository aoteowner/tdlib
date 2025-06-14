import '../tdapi.dart';

class UserLink extends TdObject {
  /// Contains an HTTPS URL, which can be used to get information about a user
  const UserLink({
    required this.url,
    required this.expiresIn,
    this.extra,
    this.clientId,
  });

  /// [url] The URL
  final String url;

  /// [expiresIn] Left time for which the link is valid, in seconds; 0 if the link is a public username link
  final int expiresIn;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UserLink.fromJson(Map<String, dynamic> json) => UserLink(
        url: json['url'] ?? '',
        expiresIn: json['expires_in'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "expires_in": expiresIn,
    };
  }

  UserLink copyWith({
    String? url,
    int? expiresIn,
    dynamic extra,
    int? clientId,
  }) {
    return UserLink(
      url: url ?? this.url,
      expiresIn: expiresIn ?? this.expiresIn,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'userLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
