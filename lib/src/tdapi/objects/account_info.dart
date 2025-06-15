import '../tdapi.dart';

class AccountInfo extends TdObject {
  /// Contains basic information about another user that started a chat with the current user
  const AccountInfo({
    required this.registrationMonth,
    required this.registrationYear,
    required this.phoneNumberCountryCode,
    required this.lastNameChangeDate,
    required this.lastPhotoChangeDate,
  });

  /// [registrationMonth] Month when the user was registered in Telegram; 0-12; may be 0 if unknown
  final int registrationMonth;

  /// [registrationYear] Year when the user was registered in Telegram; 0-9999; may be 0 if unknown
  final int registrationYear;

  /// [phoneNumberCountryCode] A two-letter ISO 3166-1 alpha-2 country code based on the phone number of the user; may be empty if unknown
  final String phoneNumberCountryCode;

  /// [lastNameChangeDate] Point in time (Unix timestamp) when the user changed name last time; 0 if unknown
  final int lastNameChangeDate;

  /// [lastPhotoChangeDate] Point in time (Unix timestamp) when the user changed photo last time; 0 if unknown
  final int lastPhotoChangeDate;

  factory AccountInfo.fromJson(Map<String, dynamic> json) => AccountInfo(
        registrationMonth: json['registration_month'] ?? 0,
        registrationYear: json['registration_year'] ?? 0,
        phoneNumberCountryCode: json['phone_number_country_code'] ?? '',
        lastNameChangeDate: json['last_name_change_date'] ?? 0,
        lastPhotoChangeDate: json['last_photo_change_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "registration_month": registrationMonth,
      "registration_year": registrationYear,
      "phone_number_country_code": phoneNumberCountryCode,
      "last_name_change_date": lastNameChangeDate,
      "last_photo_change_date": lastPhotoChangeDate,
    };
  }

  AccountInfo copyWith({
    int? registrationMonth,
    int? registrationYear,
    String? phoneNumberCountryCode,
    int? lastNameChangeDate,
    int? lastPhotoChangeDate,
  }) {
    return AccountInfo(
      registrationMonth: registrationMonth ?? this.registrationMonth,
      registrationYear: registrationYear ?? this.registrationYear,
      phoneNumberCountryCode:
          phoneNumberCountryCode ?? this.phoneNumberCountryCode,
      lastNameChangeDate: lastNameChangeDate ?? this.lastNameChangeDate,
      lastPhotoChangeDate: lastPhotoChangeDate ?? this.lastPhotoChangeDate,
    );
  }

  static const CONSTRUCTOR = 'accountInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
