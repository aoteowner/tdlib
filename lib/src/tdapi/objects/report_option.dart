import '../tdapi.dart';

class ReportOption extends TdObject {

  /// Describes an option to report an entity to Telegram
  const ReportOption({
    required this.id,
    required this.text,
  });
  
  /// [id] Unique identifier of the option 
  final String id;

  /// [text] Text of the option
  final String text;
  
  /// Parse from a json
  factory ReportOption.fromJson(Map<String, dynamic> json) => ReportOption(
    id: json['id'],
    text: json['text'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "text": text,
    };
  }
  
  ReportOption copyWith({
    String? id,
    String? text,
  }) => ReportOption(
    id: id ?? this.id,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'reportOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
