part of '../tdapi.dart';

class UpgradedGiftOriginalDetails extends TdObject {

  /// Describes the original details about the gift
  const UpgradedGiftOriginalDetails({
    this.senderId,
    required this.receiverId,
    required this.text,
    required this.date,
  });
  
  /// [senderId] Identifier of the user or the chat that sent the gift; may be null if the gift was private
  final MessageSender? senderId;

  /// [receiverId] Identifier of the user or the chat that received the gift
  final MessageSender receiverId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [date] Point in time (Unix timestamp) when the gift was sent
  final int date;
  
  /// Parse from a json
  factory UpgradedGiftOriginalDetails.fromJson(Map<String, dynamic> json) => UpgradedGiftOriginalDetails(
    senderId: json['sender_id'] == null ? null : MessageSender.fromJson(json['sender_id']),
    receiverId: MessageSender.fromJson(json['receiver_id']),
    text: FormattedText.fromJson(json['text']),
    date: json['date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_id": senderId?.toJson(),
      "receiver_id": receiverId.toJson(),
      "text": text.toJson(),
      "date": date,
    };
  }
  
  UpgradedGiftOriginalDetails copyWith({
    MessageSender? senderId,
    MessageSender? receiverId,
    FormattedText? text,
    int? date,
  }) => UpgradedGiftOriginalDetails(
    senderId: senderId ?? this.senderId,
    receiverId: receiverId ?? this.receiverId,
    text: text ?? this.text,
    date: date ?? this.date,
  );

  static const CONSTRUCTOR = 'upgradedGiftOriginalDetails';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
