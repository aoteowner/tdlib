import '../tdapi.dart';

class GetChatBoostFeatures extends TdFunction {
  /// Returns the list of features available for different chat boost levels. This is an offline method
  const GetChatBoostFeatures({
    required this.isChannel,
  });

  /// [isChannel] Pass true to get the list of features for channels; pass false to get the list of features for supergroups
  final bool isChannel;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_channel": isChannel,
      "@extra": extra,
    };
  }

  GetChatBoostFeatures copyWith({
    bool? isChannel,
  }) {
    return GetChatBoostFeatures(
      isChannel: isChannel ?? this.isChannel,
    );
  }

  static const CONSTRUCTOR = 'getChatBoostFeatures';

  @override
  String getConstructor() => CONSTRUCTOR;
}
