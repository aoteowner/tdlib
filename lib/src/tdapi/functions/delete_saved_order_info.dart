import '../tdapi.dart';

class DeleteSavedOrderInfo extends TdFunction {
  /// Deletes saved order information
  const DeleteSavedOrderInfo();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  DeleteSavedOrderInfo copyWith() {
    return const DeleteSavedOrderInfo();
  }

  static const CONSTRUCTOR = 'deleteSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
