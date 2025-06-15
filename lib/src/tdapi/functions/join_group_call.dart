import '../tdapi.dart';

class JoinGroupCall extends TdFunction {
  /// Joins a group call that is not bound to a chat
  const JoinGroupCall({
    required this.inputGroupCall,
    required this.joinParameters,
  });

  /// [inputGroupCall] The group call to join
  final InputGroupCall inputGroupCall;

  /// [joinParameters] Parameters to join the call
  final GroupCallJoinParameters joinParameters;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "input_group_call": inputGroupCall.toJson(),
      "join_parameters": joinParameters.toJson(),
      "@extra": extra,
    };
  }

  JoinGroupCall copyWith({
    InputGroupCall? inputGroupCall,
    GroupCallJoinParameters? joinParameters,
  }) {
    return JoinGroupCall(
      inputGroupCall: inputGroupCall ?? this.inputGroupCall,
      joinParameters: joinParameters ?? this.joinParameters,
    );
  }

  static const CONSTRUCTOR = 'joinGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
