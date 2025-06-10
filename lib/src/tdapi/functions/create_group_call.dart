part of '../tdapi.dart';

class CreateGroupCall extends TdFunction {

  /// Creates a new group call that isn't bound to a chat
  const CreateGroupCall({
    this.joinParameters,
  });
  
  /// [joinParameters] Parameters to join the call; pass null to only create call link without joining the call
  final GroupCallJoinParameters? joinParameters;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "join_parameters": joinParameters?.toJson(),
      "@extra": extra,
    };
  }
  
  CreateGroupCall copyWith({
    GroupCallJoinParameters? joinParameters,
  }) => CreateGroupCall(
    joinParameters: joinParameters ?? this.joinParameters,
  );

  static const CONSTRUCTOR = 'createGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
