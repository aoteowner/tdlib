part of '../tdapi.dart';

class GetInstalledBackgrounds extends TdFunction {

  /// Returns backgrounds installed by the user
  const GetInstalledBackgrounds({
    required this.forDarkTheme,
  });
  
  /// [forDarkTheme] Pass true to order returned backgrounds for a dark theme
  final bool forDarkTheme;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
    };
  }
  
  GetInstalledBackgrounds copyWith({
    bool? forDarkTheme,
  }) => GetInstalledBackgrounds(
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
  );

  static const CONSTRUCTOR = 'getInstalledBackgrounds';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
