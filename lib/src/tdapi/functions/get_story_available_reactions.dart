import '../tdapi.dart';

class GetStoryAvailableReactions extends TdFunction {
  /// Returns reactions, which can be chosen for a story
  const GetStoryAvailableReactions({
    required this.rowSize,
  });

  /// [rowSize] Number of reaction per row, 5-25
  final int rowSize;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "row_size": rowSize,
      "@extra": extra,
    };
  }

  GetStoryAvailableReactions copyWith({
    int? rowSize,
  }) {
    return GetStoryAvailableReactions(
      rowSize: rowSize ?? this.rowSize,
    );
  }

  static const CONSTRUCTOR = 'getStoryAvailableReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
