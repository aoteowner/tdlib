part of '../tdapi.dart';

class QuickReplyShortcut extends TdObject {

  /// Describes a shortcut that can be used for a quick reply
  const QuickReplyShortcut({
    required this.id,
    required this.name,
    required this.firstMessage,
    required this.messageCount,
  });
  
  /// [id] Unique shortcut identifier
  final int id;

  /// [name] The name of the shortcut that can be used to use the shortcut
  final String name;

  /// [firstMessage] The first shortcut message
  final QuickReplyMessage firstMessage;

  /// [messageCount] The total number of messages in the shortcut
  final int messageCount;
  
  /// Parse from a json
  factory QuickReplyShortcut.fromJson(Map<String, dynamic> json) => QuickReplyShortcut(
    id: json['id'],
    name: json['name'],
    firstMessage: QuickReplyMessage.fromJson(json['first_message']),
    messageCount: json['message_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "name": name,
      "first_message": firstMessage.toJson(),
      "message_count": messageCount,
    };
  }
  
  QuickReplyShortcut copyWith({
    int? id,
    String? name,
    QuickReplyMessage? firstMessage,
    int? messageCount,
  }) => QuickReplyShortcut(
    id: id ?? this.id,
    name: name ?? this.name,
    firstMessage: firstMessage ?? this.firstMessage,
    messageCount: messageCount ?? this.messageCount,
  );

  static const CONSTRUCTOR = 'quickReplyShortcut';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
