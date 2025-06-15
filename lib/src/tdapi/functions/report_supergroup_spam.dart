import '../tdapi.dart';

class ReportSupergroupSpam extends TdFunction {
  /// Reports messages in a supergroup as spam; requires administrator rights in the supergroup
  const ReportSupergroupSpam({
    required this.supergroupId,
    required this.messageIds,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [messageIds] Identifiers of messages to report. Use messageProperties.can_report_supergroup_spam to check whether the message can be reported
  final List<int> messageIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "message_ids": messageIds,
      "@extra": extra,
    };
  }

  ReportSupergroupSpam copyWith({
    int? supergroupId,
    List<int>? messageIds,
  }) {
    return ReportSupergroupSpam(
      supergroupId: supergroupId ?? this.supergroupId,
      messageIds: messageIds ?? this.messageIds,
    );
  }

  static const CONSTRUCTOR = 'reportSupergroupSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}
