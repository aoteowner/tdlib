import '../tdapi.dart';

class PaidReactionType extends TdObject {

  /// Describes type of paid message reaction
  const PaidReactionType();
  
  /// a PaidReactionType return type can be :
  /// * [PaidReactionTypeRegular]
  /// * [PaidReactionTypeAnonymous]
  /// * [PaidReactionTypeChat]
  factory PaidReactionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PaidReactionTypeRegular.CONSTRUCTOR:
        return PaidReactionTypeRegular.fromJson(json);
      case PaidReactionTypeAnonymous.CONSTRUCTOR:
        return PaidReactionTypeAnonymous.fromJson(json);
      case PaidReactionTypeChat.CONSTRUCTOR:
        return PaidReactionTypeChat.fromJson(json);
      default:
        return const PaidReactionType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PaidReactionType copyWith() => const PaidReactionType();

  static const CONSTRUCTOR = 'paidReactionType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaidReactionTypeRegular extends PaidReactionType {

  /// A paid reaction on behalf of the current user
  const PaidReactionTypeRegular();
  
  /// Parse from a json
  factory PaidReactionTypeRegular.fromJson(Map<String, dynamic> json) => const PaidReactionTypeRegular();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PaidReactionTypeRegular copyWith() => const PaidReactionTypeRegular();

  static const CONSTRUCTOR = 'paidReactionTypeRegular';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaidReactionTypeAnonymous extends PaidReactionType {

  /// An anonymous paid reaction
  const PaidReactionTypeAnonymous();
  
  /// Parse from a json
  factory PaidReactionTypeAnonymous.fromJson(Map<String, dynamic> json) => const PaidReactionTypeAnonymous();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PaidReactionTypeAnonymous copyWith() => const PaidReactionTypeAnonymous();

  static const CONSTRUCTOR = 'paidReactionTypeAnonymous';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PaidReactionTypeChat extends PaidReactionType {

  /// A paid reaction on behalf of an owned chat
  const PaidReactionTypeChat({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;
  
  /// Parse from a json
  factory PaidReactionTypeChat.fromJson(Map<String, dynamic> json) => PaidReactionTypeChat(
    chatId: json['chat_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
    };
  }
  
  @override
  PaidReactionTypeChat copyWith({
    int? chatId,
  }) => PaidReactionTypeChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'paidReactionTypeChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
