import '../tdapi.dart';

class UpgradedGiftModelCount extends TdObject {
  /// Describes a model of an upgraded gift with the number of gifts found
  const UpgradedGiftModelCount({
    required this.model,
    required this.totalCount,
  });

  /// [model] The model
  final UpgradedGiftModel model;

  /// [totalCount] Total number of gifts with the model
  final int totalCount;

  factory UpgradedGiftModelCount.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftModelCount(
        model: UpgradedGiftModel.fromJson(json['model'] ?? {}),
        totalCount: json['total_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "model": model.toJson(),
      "total_count": totalCount,
    };
  }

  UpgradedGiftModelCount copyWith({
    UpgradedGiftModel? model,
    int? totalCount,
  }) {
    return UpgradedGiftModelCount(
      model: model ?? this.model,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftModelCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
