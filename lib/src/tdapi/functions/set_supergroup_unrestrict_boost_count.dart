import '../tdapi.dart';

class SetSupergroupUnrestrictBoostCount extends TdFunction {

  /// Changes the number of times the supergroup must be boosted by a user to ignore slow mode and chat permission restrictions; requires can_restrict_members administrator right
  const SetSupergroupUnrestrictBoostCount({
    required this.supergroupId,
    required this.unrestrictBoostCount,
  });
  
  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [unrestrictBoostCount] New value of the unrestrict_boost_count supergroup setting; 0-8. Use 0 to remove the setting
  final int unrestrictBoostCount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "unrestrict_boost_count": unrestrictBoostCount,
      "@extra": extra,
    };
  }
  
  SetSupergroupUnrestrictBoostCount copyWith({
    int? supergroupId,
    int? unrestrictBoostCount,
  }) => SetSupergroupUnrestrictBoostCount(
    supergroupId: supergroupId ?? this.supergroupId,
    unrestrictBoostCount: unrestrictBoostCount ?? this.unrestrictBoostCount,
  );

  static const CONSTRUCTOR = 'setSupergroupUnrestrictBoostCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
