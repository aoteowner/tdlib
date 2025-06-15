import '../tdapi.dart';

class BusinessInfo extends TdObject {
  /// Contains information about a Telegram Business account
  const BusinessInfo({
    this.location,
    this.openingHours,
    this.localOpeningHours,
    required this.nextOpenIn,
    required this.nextCloseIn,
    this.greetingMessageSettings,
    this.awayMessageSettings,
    this.startPage,
  });

  /// [location] Location of the business; may be null if none
  final BusinessLocation? location;

  /// [openingHours] Opening hours of the business; may be null if none. The hours are guaranteed to be valid and has already been split by week days
  final BusinessOpeningHours? openingHours;

  /// [localOpeningHours] Opening hours of the business in the local time; may be null if none. The hours are guaranteed to be valid and has already been split by week days.. Local time zone identifier will be empty. An updateUserFullInfo update is not triggered when value of this field changes
  final BusinessOpeningHours? localOpeningHours;

  /// [nextOpenIn] Time left before the business will open the next time, in seconds; 0 if unknown. An updateUserFullInfo update is not triggered when value of this field changes
  final int nextOpenIn;

  /// [nextCloseIn] Time left before the business will close the next time, in seconds; 0 if unknown. An updateUserFullInfo update is not triggered when value of this field changes
  final int nextCloseIn;

  /// [greetingMessageSettings] The greeting message; may be null if none or the Business account is not of the current user
  final BusinessGreetingMessageSettings? greetingMessageSettings;

  /// [awayMessageSettings] The away message; may be null if none or the Business account is not of the current user
  final BusinessAwayMessageSettings? awayMessageSettings;

  /// [startPage] Information about start page of the account; may be null if none
  final BusinessStartPage? startPage;

  factory BusinessInfo.fromJson(Map<String, dynamic> json) => BusinessInfo(
        location: BusinessLocation.fromJson(json['location'] ?? {}),
        openingHours:
            BusinessOpeningHours.fromJson(json['opening_hours'] ?? {}),
        localOpeningHours:
            BusinessOpeningHours.fromJson(json['local_opening_hours'] ?? {}),
        nextOpenIn: json['next_open_in'] ?? 0,
        nextCloseIn: json['next_close_in'] ?? 0,
        greetingMessageSettings: BusinessGreetingMessageSettings.fromJson(
            json['greeting_message_settings'] ?? {}),
        awayMessageSettings: BusinessAwayMessageSettings.fromJson(
            json['away_message_settings'] ?? {}),
        startPage: BusinessStartPage.fromJson(json['start_page'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location?.toJson(),
      "opening_hours": openingHours?.toJson(),
      "local_opening_hours": localOpeningHours?.toJson(),
      "next_open_in": nextOpenIn,
      "next_close_in": nextCloseIn,
      "greeting_message_settings": greetingMessageSettings?.toJson(),
      "away_message_settings": awayMessageSettings?.toJson(),
      "start_page": startPage?.toJson(),
    };
  }

  BusinessInfo copyWith({
    BusinessLocation? location,
    BusinessOpeningHours? openingHours,
    BusinessOpeningHours? localOpeningHours,
    int? nextOpenIn,
    int? nextCloseIn,
    BusinessGreetingMessageSettings? greetingMessageSettings,
    BusinessAwayMessageSettings? awayMessageSettings,
    BusinessStartPage? startPage,
  }) {
    return BusinessInfo(
      location: location ?? this.location,
      openingHours: openingHours ?? this.openingHours,
      localOpeningHours: localOpeningHours ?? this.localOpeningHours,
      nextOpenIn: nextOpenIn ?? this.nextOpenIn,
      nextCloseIn: nextCloseIn ?? this.nextCloseIn,
      greetingMessageSettings:
          greetingMessageSettings ?? this.greetingMessageSettings,
      awayMessageSettings: awayMessageSettings ?? this.awayMessageSettings,
      startPage: startPage ?? this.startPage,
    );
  }

  static const CONSTRUCTOR = 'businessInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
