import '../tdapi.dart';

class PageBlockTableCell extends TdObject {
  /// Represents a cell of a table
  const PageBlockTableCell({
    this.text,
    required this.isHeader,
    required this.colspan,
    required this.rowspan,
    required this.align,
    required this.valign,
  });

  /// [text] Cell text; may be null. If the text is null, then the cell must be invisible
  final RichText? text;

  /// [isHeader] True, if it is a header cell
  final bool isHeader;

  /// [colspan] The number of columns the cell spans
  final int colspan;

  /// [rowspan] The number of rows the cell spans
  final int rowspan;

  /// [align] Horizontal cell content alignment
  final PageBlockHorizontalAlignment align;

  /// [valign] Vertical cell content alignment
  final PageBlockVerticalAlignment valign;

  factory PageBlockTableCell.fromJson(Map<String, dynamic> json) =>
      PageBlockTableCell(
        text: RichText.fromJson(json['text'] ?? {}),
        isHeader: json['is_header'] ?? false,
        colspan: json['colspan'] ?? 0,
        rowspan: json['rowspan'] ?? 0,
        align: PageBlockHorizontalAlignment.fromJson(json['align'] ?? {}),
        valign: PageBlockVerticalAlignment.fromJson(json['valign'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text?.toJson(),
      "is_header": isHeader,
      "colspan": colspan,
      "rowspan": rowspan,
      "align": align.toJson(),
      "valign": valign.toJson(),
    };
  }

  PageBlockTableCell copyWith({
    RichText? text,
    bool? isHeader,
    int? colspan,
    int? rowspan,
    PageBlockHorizontalAlignment? align,
    PageBlockVerticalAlignment? valign,
  }) {
    return PageBlockTableCell(
      text: text ?? this.text,
      isHeader: isHeader ?? this.isHeader,
      colspan: colspan ?? this.colspan,
      rowspan: rowspan ?? this.rowspan,
      align: align ?? this.align,
      valign: valign ?? this.valign,
    );
  }

  static const CONSTRUCTOR = 'pageBlockTableCell';

  @override
  String getConstructor() => CONSTRUCTOR;
}
