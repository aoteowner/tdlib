import '../tdapi.dart';

class GetSuitablePersonalChats extends TdFunction {

  /// Returns a list of channel chats, which can be used as a personal chat
  const GetSuitablePersonalChats();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetSuitablePersonalChats copyWith() => const GetSuitablePersonalChats();

  static const CONSTRUCTOR = 'getSuitablePersonalChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
