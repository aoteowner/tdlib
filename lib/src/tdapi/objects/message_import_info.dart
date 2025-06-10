part of '../tdapi.dart';

class MessageImportInfo extends TdObject {

  /// Contains information about a message created with importMessages
  const MessageImportInfo({
    required this.senderName,
    required this.date,
  });
  
  /// [senderName] Name of the original sender
  final String senderName;

  /// [date] Point in time (Unix timestamp) when the message was originally sent
  final int date;
  
  /// Parse from a json
  factory MessageImportInfo.fromJson(Map<String, dynamic> json) => MessageImportInfo(
    senderName: json['sender_name'],
    date: json['date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_name": senderName,
      "date": date,
    };
  }
  
  MessageImportInfo copyWith({
    String? senderName,
    int? date,
  }) => MessageImportInfo(
    senderName: senderName ?? this.senderName,
    date: date ?? this.date,
  );

  static const CONSTRUCTOR = 'messageImportInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
