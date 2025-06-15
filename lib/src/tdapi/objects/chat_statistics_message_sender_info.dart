import '../tdapi.dart';

class ChatStatisticsMessageSenderInfo extends TdObject {
  /// Contains statistics about messages sent by a user
  const ChatStatisticsMessageSenderInfo({
    required this.userId,
    required this.sentMessageCount,
    required this.averageCharacterCount,
  });

  /// [userId] User identifier
  final int userId;

  /// [sentMessageCount] Number of sent messages
  final int sentMessageCount;

  /// [averageCharacterCount] Average number of characters in sent messages; 0 if unknown
  final int averageCharacterCount;

  factory ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json) =>
      ChatStatisticsMessageSenderInfo(
        userId: json['user_id'] ?? 0,
        sentMessageCount: json['sent_message_count'] ?? 0,
        averageCharacterCount: json['average_character_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "sent_message_count": sentMessageCount,
      "average_character_count": averageCharacterCount,
    };
  }

  ChatStatisticsMessageSenderInfo copyWith({
    int? userId,
    int? sentMessageCount,
    int? averageCharacterCount,
  }) {
    return ChatStatisticsMessageSenderInfo(
      userId: userId ?? this.userId,
      sentMessageCount: sentMessageCount ?? this.sentMessageCount,
      averageCharacterCount:
          averageCharacterCount ?? this.averageCharacterCount,
    );
  }

  static const CONSTRUCTOR = 'chatStatisticsMessageSenderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
