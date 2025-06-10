part of '../tdapi.dart';

class GetGroupCallParticipants extends TdFunction {

  /// Returns information about participants of a non-joined group call that is not bound to a chat
  const GetGroupCallParticipants({
    required this.inputGroupCall,
    required this.limit,
  });
  
  /// [inputGroupCall] The group call which participants will be returned
  final InputGroupCall inputGroupCall;

  /// [limit] The maximum number of participants to return; must be positive
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "input_group_call": inputGroupCall.toJson(),
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetGroupCallParticipants copyWith({
    InputGroupCall? inputGroupCall,
    int? limit,
  }) => GetGroupCallParticipants(
    inputGroupCall: inputGroupCall ?? this.inputGroupCall,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getGroupCallParticipants';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
