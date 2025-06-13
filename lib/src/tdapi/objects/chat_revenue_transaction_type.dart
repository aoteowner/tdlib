import '../tdapi.dart';

class ChatRevenueTransactionType extends TdObject {

  /// Describes type of transaction for revenue earned from sponsored messages in a chat
  const ChatRevenueTransactionType();
  
  /// a ChatRevenueTransactionType return type can be :
  /// * [ChatRevenueTransactionTypeEarnings]
  /// * [ChatRevenueTransactionTypeWithdrawal]
  /// * [ChatRevenueTransactionTypeRefund]
  factory ChatRevenueTransactionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatRevenueTransactionTypeEarnings.CONSTRUCTOR:
        return ChatRevenueTransactionTypeEarnings.fromJson(json);
      case ChatRevenueTransactionTypeWithdrawal.CONSTRUCTOR:
        return ChatRevenueTransactionTypeWithdrawal.fromJson(json);
      case ChatRevenueTransactionTypeRefund.CONSTRUCTOR:
        return ChatRevenueTransactionTypeRefund.fromJson(json);
      default:
        return const ChatRevenueTransactionType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatRevenueTransactionType copyWith() => const ChatRevenueTransactionType();

  static const CONSTRUCTOR = 'chatRevenueTransactionType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatRevenueTransactionTypeEarnings extends ChatRevenueTransactionType {

  /// Describes earnings from sponsored messages in a chat in some time frame
  const ChatRevenueTransactionTypeEarnings({
    required this.startDate,
    required this.endDate,
  });
  
  /// [startDate] Point in time (Unix timestamp) when the earnings started
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the earnings ended
  final int endDate;
  
  /// Parse from a json
  factory ChatRevenueTransactionTypeEarnings.fromJson(Map<String, dynamic> json) => ChatRevenueTransactionTypeEarnings(
    startDate: json['start_date'] ?? 0,
    endDate: json['end_date'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "start_date": startDate,
      "end_date": endDate,
    };
  }
  
  @override
  ChatRevenueTransactionTypeEarnings copyWith({
    int? startDate,
    int? endDate,
  }) => ChatRevenueTransactionTypeEarnings(
    startDate: startDate ?? this.startDate,
    endDate: endDate ?? this.endDate,
  );

  static const CONSTRUCTOR = 'chatRevenueTransactionTypeEarnings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatRevenueTransactionTypeWithdrawal extends ChatRevenueTransactionType {

  /// Describes a withdrawal of earnings
  const ChatRevenueTransactionTypeWithdrawal({
    required this.withdrawalDate,
    required this.provider,
    required this.state,
  });
  
  /// [withdrawalDate] Point in time (Unix timestamp) when the earnings withdrawal started
  final int withdrawalDate;

  /// [provider] Name of the payment provider
  final String provider;

  /// [state] State of the withdrawal
  final RevenueWithdrawalState state;
  
  /// Parse from a json
  factory ChatRevenueTransactionTypeWithdrawal.fromJson(Map<String, dynamic> json) => ChatRevenueTransactionTypeWithdrawal(
    withdrawalDate: json['withdrawal_date'] ?? 0,
    provider: json['provider'] ?? '',
    state: RevenueWithdrawalState.fromJson(json['state'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "withdrawal_date": withdrawalDate,
      "provider": provider,
      "state": state.toJson(),
    };
  }
  
  @override
  ChatRevenueTransactionTypeWithdrawal copyWith({
    int? withdrawalDate,
    String? provider,
    RevenueWithdrawalState? state,
  }) => ChatRevenueTransactionTypeWithdrawal(
    withdrawalDate: withdrawalDate ?? this.withdrawalDate,
    provider: provider ?? this.provider,
    state: state ?? this.state,
  );

  static const CONSTRUCTOR = 'chatRevenueTransactionTypeWithdrawal';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatRevenueTransactionTypeRefund extends ChatRevenueTransactionType {

  /// Describes a refund for failed withdrawal of earnings
  const ChatRevenueTransactionTypeRefund({
    required this.refundDate,
    required this.provider,
  });
  
  /// [refundDate] Point in time (Unix timestamp) when the transaction was refunded
  final int refundDate;

  /// [provider] Name of the payment provider
  final String provider;
  
  /// Parse from a json
  factory ChatRevenueTransactionTypeRefund.fromJson(Map<String, dynamic> json) => ChatRevenueTransactionTypeRefund(
    refundDate: json['refund_date'] ?? 0,
    provider: json['provider'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "refund_date": refundDate,
      "provider": provider,
    };
  }
  
  @override
  ChatRevenueTransactionTypeRefund copyWith({
    int? refundDate,
    String? provider,
  }) => ChatRevenueTransactionTypeRefund(
    refundDate: refundDate ?? this.refundDate,
    provider: provider ?? this.provider,
  );

  static const CONSTRUCTOR = 'chatRevenueTransactionTypeRefund';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
