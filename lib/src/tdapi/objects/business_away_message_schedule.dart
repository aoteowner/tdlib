import '../tdapi.dart';

class BusinessAwayMessageSchedule extends TdObject {
  /// Describes conditions for sending of away messages by a Telegram Business account
  const BusinessAwayMessageSchedule();

  factory BusinessAwayMessageSchedule.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case BusinessAwayMessageScheduleAlways.CONSTRUCTOR:
        return BusinessAwayMessageScheduleAlways.fromJson(json);
      case BusinessAwayMessageScheduleOutsideOfOpeningHours.CONSTRUCTOR:
        return BusinessAwayMessageScheduleOutsideOfOpeningHours.fromJson(json);
      case BusinessAwayMessageScheduleCustom.CONSTRUCTOR:
        return BusinessAwayMessageScheduleCustom.fromJson(json);
      default:
        return const BusinessAwayMessageSchedule();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  BusinessAwayMessageSchedule copyWith() {
    return const BusinessAwayMessageSchedule();
  }

  static const CONSTRUCTOR = 'businessAwayMessageSchedule';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BusinessAwayMessageScheduleAlways extends BusinessAwayMessageSchedule {
  /// Send away messages always
  const BusinessAwayMessageScheduleAlways();

  factory BusinessAwayMessageScheduleAlways.fromJson(
          Map<String, dynamic> json) =>
      const BusinessAwayMessageScheduleAlways();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BusinessAwayMessageScheduleAlways copyWith() {
    return const BusinessAwayMessageScheduleAlways();
  }

  static const CONSTRUCTOR = 'businessAwayMessageScheduleAlways';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BusinessAwayMessageScheduleOutsideOfOpeningHours
    extends BusinessAwayMessageSchedule {
  /// Send away messages outside of the business opening hours
  const BusinessAwayMessageScheduleOutsideOfOpeningHours();

  factory BusinessAwayMessageScheduleOutsideOfOpeningHours.fromJson(
          Map<String, dynamic> json) =>
      const BusinessAwayMessageScheduleOutsideOfOpeningHours();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BusinessAwayMessageScheduleOutsideOfOpeningHours copyWith() {
    return const BusinessAwayMessageScheduleOutsideOfOpeningHours();
  }

  static const CONSTRUCTOR = 'businessAwayMessageScheduleOutsideOfOpeningHours';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BusinessAwayMessageScheduleCustom extends BusinessAwayMessageSchedule {
  /// Send away messages only in the specified time span
  const BusinessAwayMessageScheduleCustom({
    required this.startDate,
    required this.endDate,
  });

  /// [startDate] Point in time (Unix timestamp) when the away messages will start to be sent
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the away messages will stop to be sent
  final int endDate;

  factory BusinessAwayMessageScheduleCustom.fromJson(
          Map<String, dynamic> json) =>
      BusinessAwayMessageScheduleCustom(
        startDate: json['start_date'] ?? 0,
        endDate: json['end_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "start_date": startDate,
      "end_date": endDate,
    };
  }

  @override
  BusinessAwayMessageScheduleCustom copyWith({
    int? startDate,
    int? endDate,
  }) {
    return BusinessAwayMessageScheduleCustom(
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }

  static const CONSTRUCTOR = 'businessAwayMessageScheduleCustom';

  @override
  String getConstructor() => CONSTRUCTOR;
}
