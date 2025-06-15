import '../tdapi.dart';

class MessageSelfDestructType extends TdObject {
  /// Describes when a message will be self-destructed
  const MessageSelfDestructType();

  factory MessageSelfDestructType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSelfDestructTypeTimer.CONSTRUCTOR:
        return MessageSelfDestructTypeTimer.fromJson(json);
      case MessageSelfDestructTypeImmediately.CONSTRUCTOR:
        return MessageSelfDestructTypeImmediately.fromJson(json);
      default:
        return const MessageSelfDestructType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageSelfDestructType copyWith() {
    return const MessageSelfDestructType();
  }

  static const CONSTRUCTOR = 'messageSelfDestructType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSelfDestructTypeTimer extends MessageSelfDestructType {
  /// The message will be self-destructed in the specified time after its content was opened
  const MessageSelfDestructTypeTimer({
    required this.selfDestructTime,
  });

  /// [selfDestructTime] The message's self-destruct time, in seconds; must be between 0 and 60 in private chats
  final int selfDestructTime;

  factory MessageSelfDestructTypeTimer.fromJson(Map<String, dynamic> json) =>
      MessageSelfDestructTypeTimer(
        selfDestructTime: json['self_destruct_time'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "self_destruct_time": selfDestructTime,
    };
  }

  @override
  MessageSelfDestructTypeTimer copyWith({
    int? selfDestructTime,
  }) {
    return MessageSelfDestructTypeTimer(
      selfDestructTime: selfDestructTime ?? this.selfDestructTime,
    );
  }

  static const CONSTRUCTOR = 'messageSelfDestructTypeTimer';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSelfDestructTypeImmediately extends MessageSelfDestructType {
  /// The message can be opened only once and will be self-destructed once closed
  const MessageSelfDestructTypeImmediately();

  factory MessageSelfDestructTypeImmediately.fromJson(
          Map<String, dynamic> json) =>
      const MessageSelfDestructTypeImmediately();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSelfDestructTypeImmediately copyWith() {
    return const MessageSelfDestructTypeImmediately();
  }

  static const CONSTRUCTOR = 'messageSelfDestructTypeImmediately';

  @override
  String getConstructor() => CONSTRUCTOR;
}
