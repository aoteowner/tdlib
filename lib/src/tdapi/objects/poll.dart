import '../tdapi.dart';

class Poll extends TdObject {

  /// Describes a poll
  const Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterIds,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });
  
  /// [id] Unique poll identifier
  final int id;

  /// [question] Poll question; 1-300 characters. Only custom emoji entities are allowed
  final FormattedText question;

  /// [options] List of poll answer options
  final List<PollOption> options;

  /// [totalVoterCount] Total number of voters, participating in the poll
  final int totalVoterCount;

  /// [recentVoterIds] Identifiers of recent voters, if the poll is non-anonymous
  final List<MessageSender> recentVoterIds;

  /// [isAnonymous] True, if the poll is anonymous
  final bool isAnonymous;

  /// [type] Type of the poll
  final PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will automatically be closed
  final int closeDate;

  /// [isClosed] True, if the poll is closed
  final bool isClosed;
  
  /// Parse from a json
  factory Poll.fromJson(Map<String, dynamic> json) => Poll(
    id: int.tryParse(json['id'] ?? '') ?? 0,
    question: FormattedText.fromJson(json['question'] ?? {}),
    options: json['options'] == null ? [] :(json['options'] as List).map((e) => PollOption.fromJson(e ?? {})).toList(),
    totalVoterCount: json['total_voter_count'] ?? 0,
    recentVoterIds: json['recent_voter_ids'] == null ? [] :(json['recent_voter_ids'] as List).map((e) => MessageSender.fromJson(e ?? {})).toList(),
    isAnonymous: json['is_anonymous'] ?? false,
    type: PollType.fromJson(json['type'] ?? {}),
    openPeriod: json['open_period'] ?? 0,
    closeDate: json['close_date'] ?? 0,
    isClosed: json['is_closed'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "question": question.toJson(),
      "options": options.map((e) => e.toJson()).toList(),
      "total_voter_count": totalVoterCount,
      "recent_voter_ids": recentVoterIds.map((e) => e.toJson()).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
    };
  }
  
  Poll copyWith({
    int? id,
    FormattedText? question,
    List<PollOption>? options,
    int? totalVoterCount,
    List<MessageSender>? recentVoterIds,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) => Poll(
    id: id ?? this.id,
    question: question ?? this.question,
    options: options ?? this.options,
    totalVoterCount: totalVoterCount ?? this.totalVoterCount,
    recentVoterIds: recentVoterIds ?? this.recentVoterIds,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    type: type ?? this.type,
    openPeriod: openPeriod ?? this.openPeriod,
    closeDate: closeDate ?? this.closeDate,
    isClosed: isClosed ?? this.isClosed,
  );

  static const CONSTRUCTOR = 'poll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
