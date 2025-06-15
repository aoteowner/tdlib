import '../tdapi.dart';

class GetAvailableGifts extends TdFunction {
  /// Returns gifts that can be sent to other users and channel chats
  const GetAvailableGifts();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetAvailableGifts copyWith() {
    return const GetAvailableGifts();
  }

  static const CONSTRUCTOR = 'getAvailableGifts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
