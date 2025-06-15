import '../tdapi.dart';

class SetDefaultReactionType extends TdFunction {
  /// Changes type of default reaction for the current user
  const SetDefaultReactionType({
    required this.reactionType,
  });

  /// [reactionType] New type of the default reaction. The paid reaction can't be set as default
  final ReactionType reactionType;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reaction_type": reactionType.toJson(),
      "@extra": extra,
    };
  }

  SetDefaultReactionType copyWith({
    ReactionType? reactionType,
  }) {
    return SetDefaultReactionType(
      reactionType: reactionType ?? this.reactionType,
    );
  }

  static const CONSTRUCTOR = 'setDefaultReactionType';

  @override
  String getConstructor() => CONSTRUCTOR;
}
