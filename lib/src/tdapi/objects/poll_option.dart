import '../tdapi.dart';

class PollOption extends TdObject {
  /// Describes one answer option of a poll
  const PollOption({
    required this.text,
    required this.voterCount,
    required this.votePercentage,
    required this.isChosen,
    required this.isBeingChosen,
  });

  /// [text] Option text; 1-100 characters. Only custom emoji entities are allowed
  final FormattedText text;

  /// [voterCount] Number of voters for this option, available only for closed or voted polls
  final int voterCount;

  /// [votePercentage] The percentage of votes for this option; 0-100
  final int votePercentage;

  /// [isChosen] True, if the option was chosen by the user
  final bool isChosen;

  /// [isBeingChosen] True, if the option is being chosen by a pending setPollAnswer request
  final bool isBeingChosen;

  factory PollOption.fromJson(Map<String, dynamic> json) => PollOption(
        text: FormattedText.fromJson(json['text'] ?? {}),
        voterCount: json['voter_count'] ?? 0,
        votePercentage: json['vote_percentage'] ?? 0,
        isChosen: json['is_chosen'] ?? false,
        isBeingChosen: json['is_being_chosen'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "voter_count": voterCount,
      "vote_percentage": votePercentage,
      "is_chosen": isChosen,
      "is_being_chosen": isBeingChosen,
    };
  }

  PollOption copyWith({
    FormattedText? text,
    int? voterCount,
    int? votePercentage,
    bool? isChosen,
    bool? isBeingChosen,
  }) {
    return PollOption(
      text: text ?? this.text,
      voterCount: voterCount ?? this.voterCount,
      votePercentage: votePercentage ?? this.votePercentage,
      isChosen: isChosen ?? this.isChosen,
      isBeingChosen: isBeingChosen ?? this.isBeingChosen,
    );
  }

  static const CONSTRUCTOR = 'pollOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
