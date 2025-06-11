import '../tdapi.dart';

class ToggleSupergroupHasAutomaticTranslation extends TdFunction {

  /// Toggles whether messages are automatically translated in the channel chat; requires can_change_info administrator right in the channel.. The chat must have at least chatBoostFeatures.min_automatic_translation_boost_level boost level to enable automatic translation
  const ToggleSupergroupHasAutomaticTranslation({
    required this.supergroupId,
    required this.hasAutomaticTranslation,
  });
  
  /// [supergroupId] The identifier of the channel
  final int supergroupId;

  /// [hasAutomaticTranslation] The new value of has_automatic_translation
  final bool hasAutomaticTranslation;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "has_automatic_translation": hasAutomaticTranslation,
      "@extra": extra,
    };
  }
  
  ToggleSupergroupHasAutomaticTranslation copyWith({
    int? supergroupId,
    bool? hasAutomaticTranslation,
  }) => ToggleSupergroupHasAutomaticTranslation(
    supergroupId: supergroupId ?? this.supergroupId,
    hasAutomaticTranslation: hasAutomaticTranslation ?? this.hasAutomaticTranslation,
  );

  static const CONSTRUCTOR = 'toggleSupergroupHasAutomaticTranslation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
