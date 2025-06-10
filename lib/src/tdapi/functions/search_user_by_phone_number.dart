part of '../tdapi.dart';

class SearchUserByPhoneNumber extends TdFunction {

  /// Searches a user by their phone number. Returns a 404 error if the user can't be found
  const SearchUserByPhoneNumber({
    required this.phoneNumber,
    required this.onlyLocal,
  });
  
  /// [phoneNumber] Phone number to search for
  final String phoneNumber;

  /// [onlyLocal] Pass true to get only locally available information without sending network requests
  final bool onlyLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "only_local": onlyLocal,
      "@extra": extra,
    };
  }
  
  SearchUserByPhoneNumber copyWith({
    String? phoneNumber,
    bool? onlyLocal,
  }) => SearchUserByPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    onlyLocal: onlyLocal ?? this.onlyLocal,
  );

  static const CONSTRUCTOR = 'searchUserByPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
