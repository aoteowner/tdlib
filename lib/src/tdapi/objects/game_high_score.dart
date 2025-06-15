import '../tdapi.dart';

class GameHighScore extends TdObject {
  /// Contains one row of the game high score table
  const GameHighScore({
    required this.position,
    required this.userId,
    required this.score,
  });

  /// [position] Position in the high score table
  final int position;

  /// [userId] User identifier
  final int userId;

  /// [score] User score
  final int score;

  factory GameHighScore.fromJson(Map<String, dynamic> json) => GameHighScore(
        position: json['position'] ?? 0,
        userId: json['user_id'] ?? 0,
        score: json['score'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "position": position,
      "user_id": userId,
      "score": score,
    };
  }

  GameHighScore copyWith({
    int? position,
    int? userId,
    int? score,
  }) {
    return GameHighScore(
      position: position ?? this.position,
      userId: userId ?? this.userId,
      score: score ?? this.score,
    );
  }

  static const CONSTRUCTOR = 'gameHighScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}
