part of '../tdapi.dart';

class StarAmount extends TdObject {

  /// Describes a possibly non-integer amount of Telegram Stars
  const StarAmount({
    required this.starCount,
    required this.nanostarCount,
    this.extra,
    this.clientId,
  });
  
  /// [starCount] The integer amount of Telegram Stars rounded to 0
  final int starCount;

  /// [nanostarCount] The number of 1/1000000000 shares of Telegram Stars; from -999999999 to 999999999
  final int nanostarCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StarAmount.fromJson(Map<String, dynamic> json) => StarAmount(
    starCount: json['star_count'],
    nanostarCount: json['nanostar_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
      "nanostar_count": nanostarCount,
    };
  }
  
  StarAmount copyWith({
    int? starCount,
    int? nanostarCount,
    dynamic extra,
    int? clientId,
  }) => StarAmount(
    starCount: starCount ?? this.starCount,
    nanostarCount: nanostarCount ?? this.nanostarCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'starAmount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
