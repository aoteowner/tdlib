import '../tdapi.dart';

class AssignStoreTransaction extends TdFunction {

  /// Informs server about an in-store purchase. For official applications only
  const AssignStoreTransaction({
    required this.transaction,
    required this.purpose,
  });
  
  /// [transaction] Information about the transaction 
  final StoreTransaction transaction;

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "transaction": transaction.toJson(),
      "purpose": purpose.toJson(),
      "@extra": extra,
    };
  }
  
  AssignStoreTransaction copyWith({
    StoreTransaction? transaction,
    StorePaymentPurpose? purpose,
  }) => AssignStoreTransaction(
    transaction: transaction ?? this.transaction,
    purpose: purpose ?? this.purpose,
  );

  static const CONSTRUCTOR = 'assignStoreTransaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
