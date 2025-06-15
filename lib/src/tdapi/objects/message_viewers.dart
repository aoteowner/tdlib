import '../tdapi.dart';

class MessageViewers extends TdObject {
  /// Represents a list of message viewers
  const MessageViewers({
    required this.viewers,
    this.extra,
    this.clientId,
  });

  /// [viewers] List of message viewers
  final List<MessageViewer> viewers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory MessageViewers.fromJson(Map<String, dynamic> json) => MessageViewers(
        viewers: json['viewers'] == null
            ? <MessageViewer>[]
            : (json['viewers'] as List)
                .map((e) => MessageViewer.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "viewers": viewers.map((e) => e.toJson()).toList(),
    };
  }

  MessageViewers copyWith({
    List<MessageViewer>? viewers,
    dynamic extra,
    int? clientId,
  }) {
    return MessageViewers(
      viewers: viewers ?? this.viewers,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'messageViewers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
