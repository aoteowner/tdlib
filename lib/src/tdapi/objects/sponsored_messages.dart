import '../tdapi.dart';

class SponsoredMessages extends TdObject {
  /// Contains a list of sponsored messages
  const SponsoredMessages({
    required this.messages,
    required this.messagesBetween,
    this.extra,
    this.clientId,
  });

  /// [messages] List of sponsored messages
  final List<SponsoredMessage> messages;

  /// [messagesBetween] The minimum number of messages between shown sponsored messages, or 0 if only one sponsored message must be shown after all ordinary messages
  final int messagesBetween;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory SponsoredMessages.fromJson(Map<String, dynamic> json) =>
      SponsoredMessages(
        messages: json['messages'] == null
            ? <SponsoredMessage>[]
            : (json['messages'] as List)
                .map((e) => SponsoredMessage.fromJson(e ?? {}))
                .toList(),
        messagesBetween: json['messages_between'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "messages": messages.map((e) => e.toJson()).toList(),
      "messages_between": messagesBetween,
    };
  }

  SponsoredMessages copyWith({
    List<SponsoredMessage>? messages,
    int? messagesBetween,
    dynamic extra,
    int? clientId,
  }) {
    return SponsoredMessages(
      messages: messages ?? this.messages,
      messagesBetween: messagesBetween ?? this.messagesBetween,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'sponsoredMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
