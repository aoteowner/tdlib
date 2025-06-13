import '../tdapi.dart';

class PhoneNumberCodeType extends TdObject {

  /// Describes type of the request for which a code is sent to a phone number
  const PhoneNumberCodeType();
  
  /// a PhoneNumberCodeType return type can be :
  /// * [PhoneNumberCodeTypeChange]
  /// * [PhoneNumberCodeTypeVerify]
  /// * [PhoneNumberCodeTypeConfirmOwnership]
  factory PhoneNumberCodeType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PhoneNumberCodeTypeChange.CONSTRUCTOR:
        return PhoneNumberCodeTypeChange.fromJson(json);
      case PhoneNumberCodeTypeVerify.CONSTRUCTOR:
        return PhoneNumberCodeTypeVerify.fromJson(json);
      case PhoneNumberCodeTypeConfirmOwnership.CONSTRUCTOR:
        return PhoneNumberCodeTypeConfirmOwnership.fromJson(json);
      default:
        return const PhoneNumberCodeType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PhoneNumberCodeType copyWith() => const PhoneNumberCodeType();

  static const CONSTRUCTOR = 'phoneNumberCodeType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PhoneNumberCodeTypeChange extends PhoneNumberCodeType {

  /// Checks ownership of a new phone number to change the user's authentication phone number; for official Android and iOS applications only
  const PhoneNumberCodeTypeChange();
  
  /// Parse from a json
  factory PhoneNumberCodeTypeChange.fromJson(Map<String, dynamic> json) => const PhoneNumberCodeTypeChange();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PhoneNumberCodeTypeChange copyWith() => const PhoneNumberCodeTypeChange();

  static const CONSTRUCTOR = 'phoneNumberCodeTypeChange';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PhoneNumberCodeTypeVerify extends PhoneNumberCodeType {

  /// Verifies ownership of a phone number to be added to the user's Telegram Passport
  const PhoneNumberCodeTypeVerify();
  
  /// Parse from a json
  factory PhoneNumberCodeTypeVerify.fromJson(Map<String, dynamic> json) => const PhoneNumberCodeTypeVerify();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PhoneNumberCodeTypeVerify copyWith() => const PhoneNumberCodeTypeVerify();

  static const CONSTRUCTOR = 'phoneNumberCodeTypeVerify';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PhoneNumberCodeTypeConfirmOwnership extends PhoneNumberCodeType {

  /// Confirms ownership of a phone number to prevent account deletion while handling links of the type internalLinkTypePhoneNumberConfirmation
  const PhoneNumberCodeTypeConfirmOwnership({
    required this.hash,
  });
  
  /// [hash] Hash value from the link
  final String hash;
  
  /// Parse from a json
  factory PhoneNumberCodeTypeConfirmOwnership.fromJson(Map<String, dynamic> json) => PhoneNumberCodeTypeConfirmOwnership(
    hash: json['hash'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "hash": hash,
    };
  }
  
  @override
  PhoneNumberCodeTypeConfirmOwnership copyWith({
    String? hash,
  }) => PhoneNumberCodeTypeConfirmOwnership(
    hash: hash ?? this.hash,
  );

  static const CONSTRUCTOR = 'phoneNumberCodeTypeConfirmOwnership';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
