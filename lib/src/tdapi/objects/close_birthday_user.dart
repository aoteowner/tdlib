part of '../tdapi.dart';

class CloseBirthdayUser extends TdObject {

  /// Describes a user that had or will have a birthday soon
  const CloseBirthdayUser({
    required this.userId,
    required this.birthdate,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [birthdate] Birthdate of the user
  final Birthdate birthdate;
  
  /// Parse from a json
  factory CloseBirthdayUser.fromJson(Map<String, dynamic> json) => CloseBirthdayUser(
    userId: json['user_id'],
    birthdate: Birthdate.fromJson(json['birthdate']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "birthdate": birthdate.toJson(),
    };
  }
  
  CloseBirthdayUser copyWith({
    int? userId,
    Birthdate? birthdate,
  }) => CloseBirthdayUser(
    userId: userId ?? this.userId,
    birthdate: birthdate ?? this.birthdate,
  );

  static const CONSTRUCTOR = 'closeBirthdayUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
