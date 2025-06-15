import '../tdapi.dart';

class SetBusinessStartPage extends TdFunction {
  /// Changes the business start page of the current user. Requires Telegram Business subscription
  const SetBusinessStartPage({
    this.startPage,
  });

  /// [startPage] The new start page of the business; pass null to remove custom start page
  final InputBusinessStartPage? startPage;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "start_page": startPage?.toJson(),
      "@extra": extra,
    };
  }

  SetBusinessStartPage copyWith({
    InputBusinessStartPage? startPage,
  }) {
    return SetBusinessStartPage(
      startPage: startPage ?? this.startPage,
    );
  }

  static const CONSTRUCTOR = 'setBusinessStartPage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
