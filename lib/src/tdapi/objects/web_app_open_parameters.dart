import '../tdapi.dart';

class WebAppOpenParameters extends TdObject {

  /// Options to be used when a Web App is opened
  const WebAppOpenParameters({
    this.theme,
    required this.applicationName,
    this.mode,
  });
  
  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the current application; 0-64 English letters, digits, and underscores
  final String applicationName;

  /// [mode] The mode in which the Web App is opened; pass null to open in webAppOpenModeFullSize
  final WebAppOpenMode? mode;
  
  /// Parse from a json
  factory WebAppOpenParameters.fromJson(Map<String, dynamic> json) => WebAppOpenParameters(
    theme: json['theme'] == null ? null : ThemeParameters.fromJson(json['theme']),
    applicationName: json['application_name'],
    mode: json['mode'] == null ? null : WebAppOpenMode.fromJson(json['mode']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "mode": mode?.toJson(),
    };
  }
  
  WebAppOpenParameters copyWith({
    ThemeParameters? theme,
    String? applicationName,
    WebAppOpenMode? mode,
  }) => WebAppOpenParameters(
    theme: theme ?? this.theme,
    applicationName: applicationName ?? this.applicationName,
    mode: mode ?? this.mode,
  );

  static const CONSTRUCTOR = 'webAppOpenParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
