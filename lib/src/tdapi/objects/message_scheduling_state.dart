import '../tdapi.dart';

class MessageSchedulingState extends TdObject {
  /// Contains information about the time when a scheduled message will be sent
  const MessageSchedulingState();

  factory MessageSchedulingState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSchedulingStateSendAtDate.CONSTRUCTOR:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.CONSTRUCTOR:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      case MessageSchedulingStateSendWhenVideoProcessed.CONSTRUCTOR:
        return MessageSchedulingStateSendWhenVideoProcessed.fromJson(json);
      default:
        return const MessageSchedulingState();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageSchedulingState copyWith() {
    return const MessageSchedulingState();
  }

  static const CONSTRUCTOR = 'messageSchedulingState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  /// The message will be sent at the specified date
  const MessageSchedulingStateSendAtDate({
    required this.sendDate,
  });

  /// [sendDate] Point in time (Unix timestamp) when the message will be sent. The date must be within 367 days in the future
  final int sendDate;

  factory MessageSchedulingStateSendAtDate.fromJson(
          Map<String, dynamic> json) =>
      MessageSchedulingStateSendAtDate(
        sendDate: json['send_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "send_date": sendDate,
    };
  }

  @override
  MessageSchedulingStateSendAtDate copyWith({
    int? sendDate,
  }) {
    return MessageSchedulingStateSendAtDate(
      sendDate: sendDate ?? this.sendDate,
    );
  }

  static const CONSTRUCTOR = 'messageSchedulingStateSendAtDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  /// The message will be sent when the other user is online. Applicable to private chats only and when the exact online status of the other user is known
  const MessageSchedulingStateSendWhenOnline();

  factory MessageSchedulingStateSendWhenOnline.fromJson(
          Map<String, dynamic> json) =>
      const MessageSchedulingStateSendWhenOnline();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSchedulingStateSendWhenOnline copyWith() {
    return const MessageSchedulingStateSendWhenOnline();
  }

  static const CONSTRUCTOR = 'messageSchedulingStateSendWhenOnline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSchedulingStateSendWhenVideoProcessed
    extends MessageSchedulingState {
  /// The message will be sent when the video in the message is converted and optimized; can be used only by the server
  const MessageSchedulingStateSendWhenVideoProcessed({
    required this.sendDate,
  });

  /// [sendDate] Approximate point in time (Unix timestamp) when the message is expected to be sent
  final int sendDate;

  factory MessageSchedulingStateSendWhenVideoProcessed.fromJson(
          Map<String, dynamic> json) =>
      MessageSchedulingStateSendWhenVideoProcessed(
        sendDate: json['send_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "send_date": sendDate,
    };
  }

  @override
  MessageSchedulingStateSendWhenVideoProcessed copyWith({
    int? sendDate,
  }) {
    return MessageSchedulingStateSendWhenVideoProcessed(
      sendDate: sendDate ?? this.sendDate,
    );
  }

  static const CONSTRUCTOR = 'messageSchedulingStateSendWhenVideoProcessed';

  @override
  String getConstructor() => CONSTRUCTOR;
}
