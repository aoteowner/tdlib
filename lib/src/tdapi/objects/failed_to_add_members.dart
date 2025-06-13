import '../tdapi.dart';

class FailedToAddMembers extends TdObject {

  /// Represents a list of users that has failed to be added to a chat
  const FailedToAddMembers({
    required this.failedToAddMembers,
    this.extra,
    this.clientId,
  });
  
  /// [failedToAddMembers] Information about users that weren't added to the chat
  final List<FailedToAddMember> failedToAddMembers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FailedToAddMembers.fromJson(Map<String, dynamic> json) => FailedToAddMembers(
    failedToAddMembers: json['failed_to_add_members'] == null ? <FailedToAddMember>[] :(json['failed_to_add_members'] as List).map((e) => FailedToAddMember.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "failed_to_add_members": failedToAddMembers.map((e) => e.toJson()).toList(),
    };
  }
  
  FailedToAddMembers copyWith({
    List<FailedToAddMember>? failedToAddMembers,
    dynamic extra,
    int? clientId,
  }) => FailedToAddMembers(
    failedToAddMembers: failedToAddMembers ?? this.failedToAddMembers,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'failedToAddMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
