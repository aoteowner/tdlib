part of '../tdapi.dart';

class GroupCallInfo extends TdObject {

  /// Contains information about a just created or just joined group call
  const GroupCallInfo({
    required this.groupCallId,
    required this.joinPayload,
    this.extra,
    this.clientId,
  });
  
  /// [groupCallId] Identifier of the group call 
  final int groupCallId;

  /// [joinPayload] Join response payload for tgcalls; empty if the call isn't joined
  final String joinPayload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GroupCallInfo.fromJson(Map<String, dynamic> json) => GroupCallInfo(
    groupCallId: json['group_call_id'],
    joinPayload: json['join_payload'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "join_payload": joinPayload,
    };
  }
  
  GroupCallInfo copyWith({
    int? groupCallId,
    String? joinPayload,
    dynamic extra,
    int? clientId,
  }) => GroupCallInfo(
    groupCallId: groupCallId ?? this.groupCallId,
    joinPayload: joinPayload ?? this.joinPayload,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'groupCallInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
