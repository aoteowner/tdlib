part of '../tdapi.dart';

class GetUpgradedGift extends TdFunction {

  /// Returns information about an upgraded gift by its name
  const GetUpgradedGift({
    required this.name,
  });
  
  /// [name] Unique name of the upgraded gift
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }
  
  GetUpgradedGift copyWith({
    String? name,
  }) => GetUpgradedGift(
    name: name ?? this.name,
  );

  static const CONSTRUCTOR = 'getUpgradedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
