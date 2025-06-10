part of '../tdapi.dart';

class CanPurchaseFromStore extends TdFunction {

  /// Checks whether an in-store purchase is possible. Must be called before any in-store purchase. For official applications only
  const CanPurchaseFromStore({
    required this.purpose,
  });
  
  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "purpose": purpose.toJson(),
      "@extra": extra,
    };
  }
  
  CanPurchaseFromStore copyWith({
    StorePaymentPurpose? purpose,
  }) => CanPurchaseFromStore(
    purpose: purpose ?? this.purpose,
  );

  static const CONSTRUCTOR = 'canPurchaseFromStore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
