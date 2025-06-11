import '../tdapi.dart';

class InputBusinessStartPage extends TdObject {

  /// Describes settings for a business account start page to set
  const InputBusinessStartPage({
    required this.title,
    required this.message,
    this.sticker,
  });
  
  /// [title] Title text of the start page; 0-getOption("business_start_page_title_length_max") characters
  final String title;

  /// [message] Message text of the start page; 0-getOption("business_start_page_message_length_max") characters
  final String message;

  /// [sticker] Greeting sticker of the start page; pass null if none. The sticker must belong to a sticker set and must not be a custom emoji
  final InputFile? sticker;
  
  /// Parse from a json
  factory InputBusinessStartPage.fromJson(Map<String, dynamic> json) => InputBusinessStartPage(
    title: json['title'],
    message: json['message'],
    sticker: json['sticker'] == null ? null : InputFile.fromJson(json['sticker']),
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
  
  InputBusinessStartPage copyWith({
    String? title,
    String? message,
    InputFile? sticker,
  }) => InputBusinessStartPage(
    title: title ?? this.title,
    message: message ?? this.message,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'inputBusinessStartPage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
