import '../tdapi.dart';

class SetAuthenticationPremiumPurchaseTransaction extends TdFunction {
  /// Informs server about an in-store purchase of Telegram Premium before authorization. Works only when the current authorization state is authorizationStateWaitPremiumPurchase
  const SetAuthenticationPremiumPurchaseTransaction({
    required this.transaction,
    required this.isRestore,
    required this.currency,
    required this.amount,
  });

  /// [transaction] Information about the transaction
  final StoreTransaction transaction;

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase; only for App Store
  final bool isRestore;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "transaction": transaction.toJson(),
      "is_restore": isRestore,
      "currency": currency,
      "amount": amount,
      "@extra": extra,
    };
  }

  SetAuthenticationPremiumPurchaseTransaction copyWith({
    StoreTransaction? transaction,
    bool? isRestore,
    String? currency,
    int? amount,
  }) {
    return SetAuthenticationPremiumPurchaseTransaction(
      transaction: transaction ?? this.transaction,
      isRestore: isRestore ?? this.isRestore,
      currency: currency ?? this.currency,
      amount: amount ?? this.amount,
    );
  }

  static const CONSTRUCTOR = 'setAuthenticationPremiumPurchaseTransaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
