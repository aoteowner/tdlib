part of '../tdapi.dart';

class MessageForwardInfo extends TdObject {

  /// Contains information about a forwarded message
  const MessageForwardInfo({
    required this.origin,
    required this.date,
    this.source,
    required this.publicServiceAnnouncementType,
  });
  
  /// [origin] Origin of the forwarded message
  final MessageOrigin origin;

  /// [date] Point in time (Unix timestamp) when the message was originally sent
  final int date;

  /// [source] For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, information about the source message from which the message was forwarded last time; may be null for other forwards or if unknown
  final ForwardSource? source;

  /// [publicServiceAnnouncementType] The type of public service announcement for the forwarded message
  final String publicServiceAnnouncementType;
  
  /// Parse from a json
  factory MessageForwardInfo.fromJson(Map<String, dynamic> json) => MessageForwardInfo(
    origin: MessageOrigin.fromJson(json['origin']),
    date: json['date'],
    source: json['source'] == null ? null : ForwardSource.fromJson(json['source']),
    publicServiceAnnouncementType: json['public_service_announcement_type'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "origin": origin.toJson(),
      "date": date,
      "source": source?.toJson(),
      "public_service_announcement_type": publicServiceAnnouncementType,
    };
  }
  
  MessageForwardInfo copyWith({
    MessageOrigin? origin,
    int? date,
    ForwardSource? source,
    String? publicServiceAnnouncementType,
  }) => MessageForwardInfo(
    origin: origin ?? this.origin,
    date: date ?? this.date,
    source: source ?? this.source,
    publicServiceAnnouncementType: publicServiceAnnouncementType ?? this.publicServiceAnnouncementType,
  );

  static const CONSTRUCTOR = 'messageForwardInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
