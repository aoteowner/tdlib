import '../tdapi.dart';

class GetBasicGroup extends TdFunction {
  /// Returns information about a basic group by its identifier. This is an offline method if the current user is not a bot
  const GetBasicGroup({
    required this.basicGroupId,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
      "@extra": extra,
    };
  }

  GetBasicGroup copyWith({
    int? basicGroupId,
  }) {
    return GetBasicGroup(
      basicGroupId: basicGroupId ?? this.basicGroupId,
    );
  }

  static const CONSTRUCTOR = 'getBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
