import '../tdapi.dart';

class StoreTransaction extends TdObject {

  /// Describes an in-store transaction
  const StoreTransaction();
  
  /// a StoreTransaction return type can be :
  /// * [StoreTransactionAppStore]
  /// * [StoreTransactionGooglePlay]
  factory StoreTransaction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StoreTransactionAppStore.CONSTRUCTOR:
        return StoreTransactionAppStore.fromJson(json);
      case StoreTransactionGooglePlay.CONSTRUCTOR:
        return StoreTransactionGooglePlay.fromJson(json);
      default:
        return const StoreTransaction();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StoreTransaction copyWith() => const StoreTransaction();

  static const CONSTRUCTOR = 'storeTransaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoreTransactionAppStore extends StoreTransaction {

  /// A purchase through App Store
  const StoreTransactionAppStore({
    required this.receipt,
  });
  
  /// [receipt] App Store receipt
  final String receipt;
  
  /// Parse from a json
  factory StoreTransactionAppStore.fromJson(Map<String, dynamic> json) => StoreTransactionAppStore(
    receipt: json['receipt'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "receipt": receipt,
    };
  }
  
  @override
  StoreTransactionAppStore copyWith({
    String? receipt,
  }) => StoreTransactionAppStore(
    receipt: receipt ?? this.receipt,
  );

  static const CONSTRUCTOR = 'storeTransactionAppStore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoreTransactionGooglePlay extends StoreTransaction {

  /// A purchase through Google Play
  const StoreTransactionGooglePlay({
    required this.packageName,
    required this.storeProductId,
    required this.purchaseToken,
  });
  
  /// [packageName] Application package name
  final String packageName;

  /// [storeProductId] Identifier of the purchased store product
  final String storeProductId;

  /// [purchaseToken] Google Play purchase token
  final String purchaseToken;
  
  /// Parse from a json
  factory StoreTransactionGooglePlay.fromJson(Map<String, dynamic> json) => StoreTransactionGooglePlay(
    packageName: json['package_name'] ?? '',
    storeProductId: json['store_product_id'] ?? '',
    purchaseToken: json['purchase_token'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "package_name": packageName,
      "store_product_id": storeProductId,
      "purchase_token": purchaseToken,
    };
  }
  
  @override
  StoreTransactionGooglePlay copyWith({
    String? packageName,
    String? storeProductId,
    String? purchaseToken,
  }) => StoreTransactionGooglePlay(
    packageName: packageName ?? this.packageName,
    storeProductId: storeProductId ?? this.storeProductId,
    purchaseToken: purchaseToken ?? this.purchaseToken,
  );

  static const CONSTRUCTOR = 'storeTransactionGooglePlay';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
