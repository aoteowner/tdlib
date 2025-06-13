import '../tdapi.dart';

class FoundUsers extends TdObject {

  /// Represents a list of found users
  const FoundUsers({
    required this.userIds,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// [userIds] Identifiers of the found users 
  final List<int> userIds;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FoundUsers.fromJson(Map<String, dynamic> json) => FoundUsers(
    userIds: json['user_ids']?.cast<int>() ?? [],
    nextOffset: json['next_offset'] ?? '',
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds,
      "next_offset": nextOffset,
    };
  }
  
  FoundUsers copyWith({
    List<int>? userIds,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => FoundUsers(
    userIds: userIds ?? this.userIds,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'foundUsers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
