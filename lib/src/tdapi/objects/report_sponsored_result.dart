import '../tdapi.dart';

class ReportSponsoredResult extends TdObject {

  /// Describes result of sponsored message or chat report
  const ReportSponsoredResult();
  
  /// a ReportSponsoredResult return type can be :
  /// * [ReportSponsoredResultOk]
  /// * [ReportSponsoredResultFailed]
  /// * [ReportSponsoredResultOptionRequired]
  /// * [ReportSponsoredResultAdsHidden]
  /// * [ReportSponsoredResultPremiumRequired]
  factory ReportSponsoredResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReportSponsoredResultOk.CONSTRUCTOR:
        return ReportSponsoredResultOk.fromJson(json);
      case ReportSponsoredResultFailed.CONSTRUCTOR:
        return ReportSponsoredResultFailed.fromJson(json);
      case ReportSponsoredResultOptionRequired.CONSTRUCTOR:
        return ReportSponsoredResultOptionRequired.fromJson(json);
      case ReportSponsoredResultAdsHidden.CONSTRUCTOR:
        return ReportSponsoredResultAdsHidden.fromJson(json);
      case ReportSponsoredResultPremiumRequired.CONSTRUCTOR:
        return ReportSponsoredResultPremiumRequired.fromJson(json);
      default:
        return const ReportSponsoredResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ReportSponsoredResult copyWith() => const ReportSponsoredResult();

  static const CONSTRUCTOR = 'reportSponsoredResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportSponsoredResultOk extends ReportSponsoredResult {

  /// The message was reported successfully
  const ReportSponsoredResultOk({
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
  factory ReportSponsoredResultOk.fromJson(Map<String, dynamic> json) => ReportSponsoredResultOk(
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
  ReportSponsoredResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => ReportSponsoredResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportSponsoredResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportSponsoredResultFailed extends ReportSponsoredResult {

  /// The sponsored message is too old or not found
  const ReportSponsoredResultFailed({
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
  factory ReportSponsoredResultFailed.fromJson(Map<String, dynamic> json) => ReportSponsoredResultFailed(
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
  ReportSponsoredResultFailed copyWith({
    dynamic extra,
    int? clientId,
  }) => ReportSponsoredResultFailed(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportSponsoredResultFailed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportSponsoredResultOptionRequired extends ReportSponsoredResult {

  /// The user must choose an option to report the message and repeat request with the chosen option
  const ReportSponsoredResultOptionRequired({
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
  factory ReportSponsoredResultOptionRequired.fromJson(Map<String, dynamic> json) => ReportSponsoredResultOptionRequired(
    title: json['title'] ?? '',
    options: json['options'] == null ? [] :(json['options'] as List).map((e) => ReportOption.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "options": options.map((e) => e.toJson()).toList(),
    };
  }
  
  @override
  ReportSponsoredResultOptionRequired copyWith({
    String? title,
    List<ReportOption>? options,
    dynamic extra,
    int? clientId,
  }) => ReportSponsoredResultOptionRequired(
    title: title ?? this.title,
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportSponsoredResultOptionRequired';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportSponsoredResultAdsHidden extends ReportSponsoredResult {

  /// Sponsored messages were hidden for the user in all chats
  const ReportSponsoredResultAdsHidden({
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
  factory ReportSponsoredResultAdsHidden.fromJson(Map<String, dynamic> json) => ReportSponsoredResultAdsHidden(
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
  ReportSponsoredResultAdsHidden copyWith({
    dynamic extra,
    int? clientId,
  }) => ReportSponsoredResultAdsHidden(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportSponsoredResultAdsHidden';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReportSponsoredResultPremiumRequired extends ReportSponsoredResult {

  /// The user asked to hide sponsored messages, but Telegram Premium is required for this
  const ReportSponsoredResultPremiumRequired({
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
  factory ReportSponsoredResultPremiumRequired.fromJson(Map<String, dynamic> json) => ReportSponsoredResultPremiumRequired(
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
  ReportSponsoredResultPremiumRequired copyWith({
    dynamic extra,
    int? clientId,
  }) => ReportSponsoredResultPremiumRequired(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'reportSponsoredResultPremiumRequired';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
