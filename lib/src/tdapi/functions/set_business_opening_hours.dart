import '../tdapi.dart';

class SetBusinessOpeningHours extends TdFunction {

  /// Changes the business opening hours of the current user. Requires Telegram Business subscription
  const SetBusinessOpeningHours({
    this.openingHours,
  });
  
  /// [openingHours] The new opening hours of the business; pass null to remove the opening hours; up to 28 time intervals can be specified
  final BusinessOpeningHours? openingHours;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "opening_hours": openingHours?.toJson(),
      "@extra": extra,
    };
  }
  
  SetBusinessOpeningHours copyWith({
    BusinessOpeningHours? openingHours,
  }) => SetBusinessOpeningHours(
    openingHours: openingHours ?? this.openingHours,
  );

  static const CONSTRUCTOR = 'setBusinessOpeningHours';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
