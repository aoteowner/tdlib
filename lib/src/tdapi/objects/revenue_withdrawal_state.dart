part of '../tdapi.dart';

class RevenueWithdrawalState extends TdObject {

  /// Describes state of a revenue withdrawal
  const RevenueWithdrawalState();
  
  /// a RevenueWithdrawalState return type can be :
  /// * [RevenueWithdrawalStatePending]
  /// * [RevenueWithdrawalStateSucceeded]
  /// * [RevenueWithdrawalStateFailed]
  factory RevenueWithdrawalState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case RevenueWithdrawalStatePending.CONSTRUCTOR:
        return RevenueWithdrawalStatePending.fromJson(json);
      case RevenueWithdrawalStateSucceeded.CONSTRUCTOR:
        return RevenueWithdrawalStateSucceeded.fromJson(json);
      case RevenueWithdrawalStateFailed.CONSTRUCTOR:
        return RevenueWithdrawalStateFailed.fromJson(json);
      default:
        return const RevenueWithdrawalState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  RevenueWithdrawalState copyWith() => const RevenueWithdrawalState();

  static const CONSTRUCTOR = 'revenueWithdrawalState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class RevenueWithdrawalStatePending extends RevenueWithdrawalState {

  /// Withdrawal is pending
  const RevenueWithdrawalStatePending();
  
  /// Parse from a json
  factory RevenueWithdrawalStatePending.fromJson(Map<String, dynamic> json) => const RevenueWithdrawalStatePending();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  RevenueWithdrawalStatePending copyWith() => const RevenueWithdrawalStatePending();

  static const CONSTRUCTOR = 'revenueWithdrawalStatePending';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class RevenueWithdrawalStateSucceeded extends RevenueWithdrawalState {

  /// Withdrawal succeeded
  const RevenueWithdrawalStateSucceeded({
    required this.date,
    required this.url,
  });
  
  /// [date] Point in time (Unix timestamp) when the withdrawal was completed
  final int date;

  /// [url] The URL where the withdrawal transaction can be viewed
  final String url;
  
  /// Parse from a json
  factory RevenueWithdrawalStateSucceeded.fromJson(Map<String, dynamic> json) => RevenueWithdrawalStateSucceeded(
    date: json['date'],
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "date": date,
      "url": url,
    };
  }
  
  @override
  RevenueWithdrawalStateSucceeded copyWith({
    int? date,
    String? url,
  }) => RevenueWithdrawalStateSucceeded(
    date: date ?? this.date,
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'revenueWithdrawalStateSucceeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class RevenueWithdrawalStateFailed extends RevenueWithdrawalState {

  /// Withdrawal failed
  const RevenueWithdrawalStateFailed();
  
  /// Parse from a json
  factory RevenueWithdrawalStateFailed.fromJson(Map<String, dynamic> json) => const RevenueWithdrawalStateFailed();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  RevenueWithdrawalStateFailed copyWith() => const RevenueWithdrawalStateFailed();

  static const CONSTRUCTOR = 'revenueWithdrawalStateFailed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
