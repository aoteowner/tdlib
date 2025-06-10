part of '../tdapi.dart';

class ReportStoryResult extends TdObject {

  /// Describes result of story report
  const ReportStoryResult();
  
  /// a ReportStoryResult return type can be :
  /// * [ReportStoryResultOk]
  /// * [ReportStoryResultOptionRequired]
  /// * [ReportStoryResultTextRequired]
  factory ReportStoryResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReportStoryResultOk.CONSTRUCTOR:
        return ReportStoryResultOk.fromJson(json);
      case ReportStoryResultOptionRequired.CONSTRUCTOR:
        return ReportStoryResultOptionRequired.fromJson(json);
      case ReportStoryResultTextRequired.CONSTRUCTOR:
        return ReportStoryResultTextRequired.fromJson(json);
      default:
        return const ReportStoryResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ReportStoryResult copyWith() => const ReportStoryResult();

  static const CONSTRUCTOR = 'reportStoryResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportStoryResultOk extends ReportStoryResult {

  /// The story was reported successfully
  const ReportStoryResultOk({
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
  factory ReportStoryResultOk.fromJson(Map<String, dynamic> json) => ReportStoryResultOk(
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
  ReportStoryResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => ReportStoryResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportStoryResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportStoryResultOptionRequired extends ReportStoryResult {

  /// The user must choose an option to report the story and repeat request with the chosen option
  const ReportStoryResultOptionRequired({
    required this.title,
    required this.options,
    this.extra,
    this.clientId,
  });
  
  /// [title] Title for the option choice 
  final String title;

  /// [options] List of available options
  final List<ReportOption> options;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ReportStoryResultOptionRequired.fromJson(Map<String, dynamic> json) => ReportStoryResultOptionRequired(
    title: json['title'],
    options: List<ReportOption>.from((json['options'] ?? []).map((item) => ReportOption.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "options": options.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  ReportStoryResultOptionRequired copyWith({
    String? title,
    List<ReportOption>? options,
    dynamic extra,
    int? clientId,
  }) => ReportStoryResultOptionRequired(
    title: title ?? this.title,
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportStoryResultOptionRequired';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportStoryResultTextRequired extends ReportStoryResult {

  /// The user must add additional text details to the report
  const ReportStoryResultTextRequired({
    required this.optionId,
    required this.isOptional,
    this.extra,
    this.clientId,
  });
  
  /// [optionId] Option identifier for the next reportStory request 
  final String optionId;

  /// [isOptional] True, if the user can skip text adding
  final bool isOptional;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ReportStoryResultTextRequired.fromJson(Map<String, dynamic> json) => ReportStoryResultTextRequired(
    optionId: json['option_id'],
    isOptional: json['is_optional'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "option_id": optionId,
      "is_optional": isOptional,
    };
  }
  
  @override
  ReportStoryResultTextRequired copyWith({
    String? optionId,
    bool? isOptional,
    dynamic extra,
    int? clientId,
  }) => ReportStoryResultTextRequired(
    optionId: optionId ?? this.optionId,
    isOptional: isOptional ?? this.isOptional,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportStoryResultTextRequired';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
