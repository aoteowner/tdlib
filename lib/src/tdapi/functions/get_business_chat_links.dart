import '../tdapi.dart';

class GetBusinessChatLinks extends TdFunction {
  /// Returns business chat links created for the current account
  const GetBusinessChatLinks();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetBusinessChatLinks copyWith() {
    return const GetBusinessChatLinks();
  }

  static const CONSTRUCTOR = 'getBusinessChatLinks';

  @override
  String getConstructor() => CONSTRUCTOR;
}
