part of '../tdapi.dart';

class ReportChatResult extends TdObject {

  /// Describes result of chat report
  const ReportChatResult();
  
  /// a ReportChatResult return type can be :
  /// * [ReportChatResultOk]
  /// * [ReportChatResultOptionRequired]
  /// * [ReportChatResultTextRequired]
  /// * [ReportChatResultMessagesRequired]
  factory ReportChatResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReportChatResultOk.CONSTRUCTOR:
        return ReportChatResultOk.fromJson(json);
      case ReportChatResultOptionRequired.CONSTRUCTOR:
        return ReportChatResultOptionRequired.fromJson(json);
      case ReportChatResultTextRequired.CONSTRUCTOR:
        return ReportChatResultTextRequired.fromJson(json);
      case ReportChatResultMessagesRequired.CONSTRUCTOR:
        return ReportChatResultMessagesRequired.fromJson(json);
      default:
        return const ReportChatResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ReportChatResult copyWith() => const ReportChatResult();

  static const CONSTRUCTOR = 'reportChatResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportChatResultOk extends ReportChatResult {

  /// The chat was reported successfully
  const ReportChatResultOk({
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
  factory ReportChatResultOk.fromJson(Map<String, dynamic> json) => ReportChatResultOk(
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
  ReportChatResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => ReportChatResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportChatResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportChatResultOptionRequired extends ReportChatResult {

  /// The user must choose an option to report the chat and repeat request with the chosen option
  const ReportChatResultOptionRequired({
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
  factory ReportChatResultOptionRequired.fromJson(Map<String, dynamic> json) => ReportChatResultOptionRequired(
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
  ReportChatResultOptionRequired copyWith({
    String? title,
    List<ReportOption>? options,
    dynamic extra,
    int? clientId,
  }) => ReportChatResultOptionRequired(
    title: title ?? this.title,
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportChatResultOptionRequired';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportChatResultTextRequired extends ReportChatResult {

  /// The user must add additional text details to the report
  const ReportChatResultTextRequired({
    required this.optionId,
    required this.isOptional,
    this.extra,
    this.clientId,
  });
  
  /// [optionId] Option identifier for the next reportChat request 
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
  factory ReportChatResultTextRequired.fromJson(Map<String, dynamic> json) => ReportChatResultTextRequired(
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
  ReportChatResultTextRequired copyWith({
    String? optionId,
    bool? isOptional,
    dynamic extra,
    int? clientId,
  }) => ReportChatResultTextRequired(
    optionId: optionId ?? this.optionId,
    isOptional: isOptional ?? this.isOptional,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportChatResultTextRequired';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportChatResultMessagesRequired extends ReportChatResult {

  /// The user must choose messages to report and repeat the reportChat request with the chosen messages
  const ReportChatResultMessagesRequired({
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
  factory ReportChatResultMessagesRequired.fromJson(Map<String, dynamic> json) => ReportChatResultMessagesRequired(
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
  ReportChatResultMessagesRequired copyWith({
    dynamic extra,
    int? clientId,
  }) => ReportChatResultMessagesRequired(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportChatResultMessagesRequired';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
