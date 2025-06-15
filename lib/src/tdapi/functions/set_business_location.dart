import '../tdapi.dart';

class SetBusinessLocation extends TdFunction {
  /// Changes the business location of the current user. Requires Telegram Business subscription
  const SetBusinessLocation({
    this.location,
  });

  /// [location] The new location of the business; pass null to remove the location
  final BusinessLocation? location;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location?.toJson(),
      "@extra": extra,
    };
  }

  SetBusinessLocation copyWith({
    BusinessLocation? location,
  }) {
    return SetBusinessLocation(
      location: location ?? this.location,
    );
  }

  static const CONSTRUCTOR = 'setBusinessLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
