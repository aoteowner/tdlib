import '../tdapi.dart';

class DeleteDefaultBackground extends TdFunction {
  /// Deletes default background for chats
  const DeleteDefaultBackground({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] Pass true if the background is deleted for a dark theme
  final bool forDarkTheme;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
    };
  }

  DeleteDefaultBackground copyWith({
    bool? forDarkTheme,
  }) {
    return DeleteDefaultBackground(
      forDarkTheme: forDarkTheme ?? this.forDarkTheme,
    );
  }

  static const CONSTRUCTOR = 'deleteDefaultBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
