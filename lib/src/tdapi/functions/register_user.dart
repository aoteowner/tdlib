import '../tdapi.dart';

class RegisterUser extends TdFunction {

  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
  const RegisterUser({
    required this.firstName,
    required this.lastName,
    required this.disableNotification,
  });
  
  /// [firstName] The first name of the user; 1-64 characters
  final String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  final String lastName;

  /// [disableNotification] Pass true to disable notification about the current user joining Telegram for other users that added them to contact list
  final bool disableNotification;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "first_name": firstName,
      "last_name": lastName,
      "disable_notification": disableNotification,
      "@extra": extra,
    };
  }
  
  RegisterUser copyWith({
    String? firstName,
    String? lastName,
    bool? disableNotification,
  }) => RegisterUser(
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    disableNotification: disableNotification ?? this.disableNotification,
  );

  static const CONSTRUCTOR = 'registerUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
