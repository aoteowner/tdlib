import '../tdapi.dart';

class UpgradedGiftBackdropColors extends TdObject {
  /// Describes colors of a backdrop of an upgraded gift
  const UpgradedGiftBackdropColors({
    required this.centerColor,
    required this.edgeColor,
    required this.symbolColor,
    required this.textColor,
  });

  /// [centerColor] A color in the center of the backdrop in the RGB format
  final int centerColor;

  /// [edgeColor] A color on the edges of the backdrop in the RGB format
  final int edgeColor;

  /// [symbolColor] A color to be applied for the symbol in the RGB format
  final int symbolColor;

  /// [textColor] A color for the text on the backdrop in the RGB format
  final int textColor;

  factory UpgradedGiftBackdropColors.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftBackdropColors(
        centerColor: json['center_color'] ?? 0,
        edgeColor: json['edge_color'] ?? 0,
        symbolColor: json['symbol_color'] ?? 0,
        textColor: json['text_color'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "center_color": centerColor,
      "edge_color": edgeColor,
      "symbol_color": symbolColor,
      "text_color": textColor,
    };
  }

  UpgradedGiftBackdropColors copyWith({
    int? centerColor,
    int? edgeColor,
    int? symbolColor,
    int? textColor,
  }) {
    return UpgradedGiftBackdropColors(
      centerColor: centerColor ?? this.centerColor,
      edgeColor: edgeColor ?? this.edgeColor,
      symbolColor: symbolColor ?? this.symbolColor,
      textColor: textColor ?? this.textColor,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftBackdropColors';

  @override
  String getConstructor() => CONSTRUCTOR;
}
