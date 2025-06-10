part of '../tdapi.dart';

class CanPostStoryResult extends TdObject {

  /// Represents result of checking whether the current user can post a story on behalf of the specific chat
  const CanPostStoryResult();
  
  /// a CanPostStoryResult return type can be :
  /// * [CanPostStoryResultOk]
  /// * [CanPostStoryResultPremiumNeeded]
  /// * [CanPostStoryResultBoostNeeded]
  /// * [CanPostStoryResultActiveStoryLimitExceeded]
  /// * [CanPostStoryResultWeeklyLimitExceeded]
  /// * [CanPostStoryResultMonthlyLimitExceeded]
  factory CanPostStoryResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CanPostStoryResultOk.CONSTRUCTOR:
        return CanPostStoryResultOk.fromJson(json);
      case CanPostStoryResultPremiumNeeded.CONSTRUCTOR:
        return CanPostStoryResultPremiumNeeded.fromJson(json);
      case CanPostStoryResultBoostNeeded.CONSTRUCTOR:
        return CanPostStoryResultBoostNeeded.fromJson(json);
      case CanPostStoryResultActiveStoryLimitExceeded.CONSTRUCTOR:
        return CanPostStoryResultActiveStoryLimitExceeded.fromJson(json);
      case CanPostStoryResultWeeklyLimitExceeded.CONSTRUCTOR:
        return CanPostStoryResultWeeklyLimitExceeded.fromJson(json);
      case CanPostStoryResultMonthlyLimitExceeded.CONSTRUCTOR:
        return CanPostStoryResultMonthlyLimitExceeded.fromJson(json);
      default:
        return const CanPostStoryResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CanPostStoryResult copyWith() => const CanPostStoryResult();

  static const CONSTRUCTOR = 'canPostStoryResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanPostStoryResultOk extends CanPostStoryResult {

  /// A story can be sent
  const CanPostStoryResultOk({
    required this.storyCount,
    this.extra,
    this.clientId,
  });
  
  /// [storyCount] Number of stories that can be posted by the user
  final int storyCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanPostStoryResultOk.fromJson(Map<String, dynamic> json) => CanPostStoryResultOk(
    storyCount: json['story_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_count": storyCount,
    };
  }
  
  @override
  CanPostStoryResultOk copyWith({
    int? storyCount,
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultOk(
    storyCount: storyCount ?? this.storyCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canPostStoryResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanPostStoryResultPremiumNeeded extends CanPostStoryResult {

  /// The user must subscribe to Telegram Premium to be able to post stories
  const CanPostStoryResultPremiumNeeded({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanPostStoryResultPremiumNeeded.fromJson(Map<String, dynamic> json) => CanPostStoryResultPremiumNeeded(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CanPostStoryResultPremiumNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultPremiumNeeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canPostStoryResultPremiumNeeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanPostStoryResultBoostNeeded extends CanPostStoryResult {

  /// The chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat
  const CanPostStoryResultBoostNeeded({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanPostStoryResultBoostNeeded.fromJson(Map<String, dynamic> json) => CanPostStoryResultBoostNeeded(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CanPostStoryResultBoostNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultBoostNeeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canPostStoryResultBoostNeeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanPostStoryResultActiveStoryLimitExceeded extends CanPostStoryResult {

  /// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire
  const CanPostStoryResultActiveStoryLimitExceeded({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanPostStoryResultActiveStoryLimitExceeded.fromJson(Map<String, dynamic> json) => CanPostStoryResultActiveStoryLimitExceeded(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CanPostStoryResultActiveStoryLimitExceeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultActiveStoryLimitExceeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canPostStoryResultActiveStoryLimitExceeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanPostStoryResultWeeklyLimitExceeded extends CanPostStoryResult {

  /// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
  const CanPostStoryResultWeeklyLimitExceeded({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });
  
  /// [retryAfter] Time left before the user can post the next story
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanPostStoryResultWeeklyLimitExceeded.fromJson(Map<String, dynamic> json) => CanPostStoryResultWeeklyLimitExceeded(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": retryAfter,
    };
  }
  
  @override
  CanPostStoryResultWeeklyLimitExceeded copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultWeeklyLimitExceeded(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canPostStoryResultWeeklyLimitExceeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanPostStoryResultMonthlyLimitExceeded extends CanPostStoryResult {

  /// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
  const CanPostStoryResultMonthlyLimitExceeded({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });
  
  /// [retryAfter] Time left before the user can post the next story
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanPostStoryResultMonthlyLimitExceeded.fromJson(Map<String, dynamic> json) => CanPostStoryResultMonthlyLimitExceeded(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": retryAfter,
    };
  }
  
  @override
  CanPostStoryResultMonthlyLimitExceeded copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultMonthlyLimitExceeded(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canPostStoryResultMonthlyLimitExceeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
