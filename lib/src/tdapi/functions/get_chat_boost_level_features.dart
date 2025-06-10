part of '../tdapi.dart';

class GetChatBoostLevelFeatures extends TdFunction {

  /// Returns the list of features available on the specific chat boost level. This is an offline method
  const GetChatBoostLevelFeatures({
    required this.isChannel,
    required this.level,
  });
  
  /// [isChannel] Pass true to get the list of features for channels; pass false to get the list of features for supergroups
  final bool isChannel;

  /// [level] Chat boost level
  final int level;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_channel": isChannel,
      "level": level,
      "@extra": extra,
    };
  }
  
  GetChatBoostLevelFeatures copyWith({
    bool? isChannel,
    int? level,
  }) => GetChatBoostLevelFeatures(
    isChannel: isChannel ?? this.isChannel,
    level: level ?? this.level,
  );

  static const CONSTRUCTOR = 'getChatBoostLevelFeatures';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
