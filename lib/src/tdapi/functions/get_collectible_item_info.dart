part of '../tdapi.dart';

class GetCollectibleItemInfo extends TdFunction {

  /// Returns information about a given collectible item that was purchased at https://fragment.com
  const GetCollectibleItemInfo({
    required this.type,
  });
  
  /// [type] Type of the collectible item. The item must be used by a user and must be visible to the current user
  final CollectibleItemType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  GetCollectibleItemInfo copyWith({
    CollectibleItemType? type,
  }) => GetCollectibleItemInfo(
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'getCollectibleItemInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
