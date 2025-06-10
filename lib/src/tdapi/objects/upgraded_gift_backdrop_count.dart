part of '../tdapi.dart';

class UpgradedGiftBackdropCount extends TdObject {

  /// Describes a backdrop of an upgraded gift
  const UpgradedGiftBackdropCount({
    required this.backdrop,
    required this.totalCount,
  });
  
  /// [backdrop] The backdrop 
  final UpgradedGiftBackdrop backdrop;

  /// [totalCount] Total number of gifts with the symbol
  final int totalCount;
  
  /// Parse from a json
  factory UpgradedGiftBackdropCount.fromJson(Map<String, dynamic> json) => UpgradedGiftBackdropCount(
    backdrop: UpgradedGiftBackdrop.fromJson(json['backdrop']),
    totalCount: json['total_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "backdrop": backdrop.toJson(),
      "total_count": totalCount,
    };
  }
  
  UpgradedGiftBackdropCount copyWith({
    UpgradedGiftBackdrop? backdrop,
    int? totalCount,
  }) => UpgradedGiftBackdropCount(
    backdrop: backdrop ?? this.backdrop,
    totalCount: totalCount ?? this.totalCount,
  );

  static const CONSTRUCTOR = 'upgradedGiftBackdropCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
