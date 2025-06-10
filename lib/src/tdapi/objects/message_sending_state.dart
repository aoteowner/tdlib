part of '../tdapi.dart';

class MessageSendingState extends TdObject {

  /// Contains information about the sending state of the message
  const MessageSendingState();
  
  /// a MessageSendingState return type can be :
  /// * [MessageSendingStatePending]
  /// * [MessageSendingStateFailed]
  factory MessageSendingState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSendingStatePending.CONSTRUCTOR:
        return MessageSendingStatePending.fromJson(json);
      case MessageSendingStateFailed.CONSTRUCTOR:
        return MessageSendingStateFailed.fromJson(json);
      default:
        return const MessageSendingState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageSendingState copyWith() => const MessageSendingState();

  static const CONSTRUCTOR = 'messageSendingState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSendingStatePending extends MessageSendingState {

  /// The message is being sent now, but has not yet been delivered to the server
  const MessageSendingStatePending({
    required this.sendingId,
  });
  
  /// [sendingId] Non-persistent message sending identifier, specified by the application
  final int sendingId;
  
  /// Parse from a json
  factory MessageSendingStatePending.fromJson(Map<String, dynamic> json) => MessageSendingStatePending(
    sendingId: json['sending_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sending_id": sendingId,
    };
  }
  
  @override
  MessageSendingStatePending copyWith({
    int? sendingId,
  }) => MessageSendingStatePending(
    sendingId: sendingId ?? this.sendingId,
  );

  static const CONSTRUCTOR = 'messageSendingStatePending';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSendingStateFailed extends MessageSendingState {

  /// The message failed to be sent
  const MessageSendingStateFailed({
    required this.error,
    required this.canRetry,
    required this.needAnotherSender,
    required this.needAnotherReplyQuote,
    required this.needDropReply,
    required this.requiredPaidMessageStarCount,
    required this.retryAfter,
  });
  
  /// [error] The cause of the message sending failure
  final TdError error;

  /// [canRetry] True, if the message can be re-sent using resendMessages or readdQuickReplyShortcutMessages
  final bool canRetry;

  /// [needAnotherSender] True, if the message can be re-sent only on behalf of a different sender
  final bool needAnotherSender;

  /// [needAnotherReplyQuote] True, if the message can be re-sent only if another quote is chosen in the message that is replied by the given message
  final bool needAnotherReplyQuote;

  /// [needDropReply] True, if the message can be re-sent only if the message to be replied is removed. This will be done automatically by resendMessages
  final bool needDropReply;

  /// [requiredPaidMessageStarCount] The number of Telegram Stars that must be paid to send the message; 0 if the current amount is correct
  final int requiredPaidMessageStarCount;

  /// [retryAfter] Time left before the message can be re-sent, in seconds. No update is sent when this field changes
  final double retryAfter;
  
  /// Parse from a json
  factory MessageSendingStateFailed.fromJson(Map<String, dynamic> json) => MessageSendingStateFailed(
    error: TdError.fromJson(json['error']),
    canRetry: json['can_retry'],
    needAnotherSender: json['need_another_sender'],
    needAnotherReplyQuote: json['need_another_reply_quote'],
    needDropReply: json['need_drop_reply'],
    requiredPaidMessageStarCount: json['required_paid_message_star_count'],
    retryAfter: json['retry_after'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error": error.toJson(),
      "can_retry": canRetry,
      "need_another_sender": needAnotherSender,
      "need_another_reply_quote": needAnotherReplyQuote,
      "need_drop_reply": needDropReply,
      "required_paid_message_star_count": requiredPaidMessageStarCount,
      "retry_after": retryAfter,
    };
  }
  
  @override
  MessageSendingStateFailed copyWith({
    TdError? error,
    bool? canRetry,
    bool? needAnotherSender,
    bool? needAnotherReplyQuote,
    bool? needDropReply,
    int? requiredPaidMessageStarCount,
    double? retryAfter,
  }) => MessageSendingStateFailed(
    error: error ?? this.error,
    canRetry: canRetry ?? this.canRetry,
    needAnotherSender: needAnotherSender ?? this.needAnotherSender,
    needAnotherReplyQuote: needAnotherReplyQuote ?? this.needAnotherReplyQuote,
    needDropReply: needDropReply ?? this.needDropReply,
    requiredPaidMessageStarCount: requiredPaidMessageStarCount ?? this.requiredPaidMessageStarCount,
    retryAfter: retryAfter ?? this.retryAfter,
  );

  static const CONSTRUCTOR = 'messageSendingStateFailed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
