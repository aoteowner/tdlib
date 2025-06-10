part of '../tdapi.dart';

class MessageSponsor extends TdObject {

  /// Information about the sponsor of a message
  const MessageSponsor({
    required this.url,
    this.photo,
    required this.info,
  });
  
  /// [url] URL of the sponsor to be opened when the message is clicked
  final String url;

  /// [photo] Photo of the sponsor; may be null if must not be shown
  final Photo? photo;

  /// [info] Additional optional information about the sponsor to be shown along with the message
  final String info;
  
  /// Parse from a json
  factory MessageSponsor.fromJson(Map<String, dynamic> json) => MessageSponsor(
    url: json['url'],
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    info: json['info'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "photo": photo?.toJson(),
      "info": info,
    };
  }
  
  MessageSponsor copyWith({
    String? url,
    Photo? photo,
    String? info,
  }) => MessageSponsor(
    url: url ?? this.url,
    photo: photo ?? this.photo,
    info: info ?? this.info,
  );

  static const CONSTRUCTOR = 'messageSponsor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
