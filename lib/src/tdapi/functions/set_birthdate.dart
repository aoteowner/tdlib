import '../tdapi.dart';

class SetBirthdate extends TdFunction {
  /// Changes the birthdate of the current user
  const SetBirthdate({
    this.birthdate,
  });

  /// [birthdate] The new value of the current user's birthdate; pass null to remove the birthdate
  final Birthdate? birthdate;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "birthdate": birthdate?.toJson(),
      "@extra": extra,
    };
  }

  SetBirthdate copyWith({
    Birthdate? birthdate,
  }) {
    return SetBirthdate(
      birthdate: birthdate ?? this.birthdate,
    );
  }

  static const CONSTRUCTOR = 'setBirthdate';

  @override
  String getConstructor() => CONSTRUCTOR;
}
