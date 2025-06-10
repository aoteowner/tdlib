part of '../tdapi.dart';

class RemoveInstalledBackground extends TdFunction {

  /// Removes background from the list of installed backgrounds
  const RemoveInstalledBackground({
    required this.backgroundId,
  });
  
  /// [backgroundId] The background identifier
  final int backgroundId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background_id": backgroundId,
      "@extra": extra,
    };
  }
  
  RemoveInstalledBackground copyWith({
    int? backgroundId,
  }) => RemoveInstalledBackground(
    backgroundId: backgroundId ?? this.backgroundId,
  );

  static const CONSTRUCTOR = 'removeInstalledBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
