import '../tdapi.dart';

class AvailableReaction extends TdObject {
  /// Represents an available reaction
  const AvailableReaction({
    required this.type,
    required this.needsPremium,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [needsPremium] True, if Telegram Premium is needed to send the reaction
  final bool needsPremium;

  factory AvailableReaction.fromJson(Map<String, dynamic> json) =>
      AvailableReaction(
        type: ReactionType.fromJson(json['type'] ?? {}),
        needsPremium: json['needs_premium'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "needs_premium": needsPremium,
    };
  }

  AvailableReaction copyWith({
    ReactionType? type,
    bool? needsPremium,
  }) {
    return AvailableReaction(
      type: type ?? this.type,
      needsPremium: needsPremium ?? this.needsPremium,
    );
  }

  static const CONSTRUCTOR = 'availableReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
