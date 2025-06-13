import '../tdapi.dart';

class BusinessStartPage extends TdObject {

  /// Describes settings for a business account start page
  const BusinessStartPage({
    required this.title,
    required this.message,
    this.sticker,
  });
  
  /// [title] Title text of the start page
  final String title;

  /// [message] Message text of the start page
  final String message;

  /// [sticker] Greeting sticker of the start page; may be null if none
  final Sticker? sticker;
  
  /// Parse from a json
  factory BusinessStartPage.fromJson(Map<String, dynamic> json) => BusinessStartPage(
    title: json['title'] ?? '',
    message: json['message'] ?? '',
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "message": message,
      "sticker": sticker?.toJson(),
    };
  }
  
  BusinessStartPage copyWith({
    String? title,
    String? message,
    Sticker? sticker,
  }) => BusinessStartPage(
    title: title ?? this.title,
    message: message ?? this.message,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'businessStartPage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
