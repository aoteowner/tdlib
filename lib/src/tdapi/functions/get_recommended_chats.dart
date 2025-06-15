import '../tdapi.dart';

class GetRecommendedChats extends TdFunction {
  /// Returns a list of channel chats recommended to the current user
  const GetRecommendedChats();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetRecommendedChats copyWith() {
    return const GetRecommendedChats();
  }

  static const CONSTRUCTOR = 'getRecommendedChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
