part of '../tdapi.dart';

class InputBusinessChatLink extends TdObject {

  /// Describes a business chat link to create or edit
  const InputBusinessChatLink({
    required this.text,
    required this.title,
  });
  
  /// [text] Message draft text that will be added to the input field
  final FormattedText text;

  /// [title] Link title
  final String title;
  
  /// Parse from a json
  factory InputBusinessChatLink.fromJson(Map<String, dynamic> json) => InputBusinessChatLink(
    text: FormattedText.fromJson(json['text']),
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "title": title,
    };
  }
  
  InputBusinessChatLink copyWith({
    FormattedText? text,
    String? title,
  }) => InputBusinessChatLink(
    text: text ?? this.text,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'inputBusinessChatLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
