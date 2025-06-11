import '../tdapi.dart';

class Birthdate extends TdObject {

  /// Represents a birthdate of a user
  const Birthdate({
    required this.day,
    required this.month,
    required this.year,
  });
  
  /// [day] Day of the month; 1-31 
  final int day;

  /// [month] Month of the year; 1-12 
  final int month;

  /// [year] Birth year; 0 if unknown
  final int year;
  
  /// Parse from a json
  factory Birthdate.fromJson(Map<String, dynamic> json) => Birthdate(
    day: json['day'],
    month: json['month'],
    year: json['year'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "day": day,
      "month": month,
      "year": year,
    };
  }
  
  Birthdate copyWith({
    int? day,
    int? month,
    int? year,
  }) => Birthdate(
    day: day ?? this.day,
    month: month ?? this.month,
    year: year ?? this.year,
  );

  static const CONSTRUCTOR = 'birthdate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
