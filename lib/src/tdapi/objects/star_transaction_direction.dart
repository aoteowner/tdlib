import '../tdapi.dart';

class StarTransactionDirection extends TdObject {
  /// Describes direction of a transaction with Telegram Stars
  const StarTransactionDirection();

  factory StarTransactionDirection.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StarTransactionDirectionIncoming.CONSTRUCTOR:
        return StarTransactionDirectionIncoming.fromJson(json);
      case StarTransactionDirectionOutgoing.CONSTRUCTOR:
        return StarTransactionDirectionOutgoing.fromJson(json);
      default:
        return const StarTransactionDirection();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StarTransactionDirection copyWith() {
    return const StarTransactionDirection();
  }

  static const CONSTRUCTOR = 'starTransactionDirection';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StarTransactionDirectionIncoming extends StarTransactionDirection {
  /// The transaction is incoming and increases the number of owned Telegram Stars
  const StarTransactionDirectionIncoming();

  factory StarTransactionDirectionIncoming.fromJson(
          Map<String, dynamic> json) =>
      const StarTransactionDirectionIncoming();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StarTransactionDirectionIncoming copyWith() {
    return const StarTransactionDirectionIncoming();
  }

  static const CONSTRUCTOR = 'starTransactionDirectionIncoming';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StarTransactionDirectionOutgoing extends StarTransactionDirection {
  /// The transaction is outgoing and decreases the number of owned Telegram Stars
  const StarTransactionDirectionOutgoing();

  factory StarTransactionDirectionOutgoing.fromJson(
          Map<String, dynamic> json) =>
      const StarTransactionDirectionOutgoing();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StarTransactionDirectionOutgoing copyWith() {
    return const StarTransactionDirectionOutgoing();
  }

  static const CONSTRUCTOR = 'starTransactionDirectionOutgoing';

  @override
  String getConstructor() => CONSTRUCTOR;
}
