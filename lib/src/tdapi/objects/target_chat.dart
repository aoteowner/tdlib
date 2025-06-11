import '../tdapi.dart';

class TargetChat extends TdObject {

  /// Describes the target chat to be opened
  const TargetChat();
  
  /// a TargetChat return type can be :
  /// * [TargetChatCurrent]
  /// * [TargetChatChosen]
  /// * [TargetChatInternalLink]
  factory TargetChat.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TargetChatCurrent.CONSTRUCTOR:
        return TargetChatCurrent.fromJson(json);
      case TargetChatChosen.CONSTRUCTOR:
        return TargetChatChosen.fromJson(json);
      case TargetChatInternalLink.CONSTRUCTOR:
        return TargetChatInternalLink.fromJson(json);
      default:
        return const TargetChat();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  TargetChat copyWith() => const TargetChat();

  static const CONSTRUCTOR = 'targetChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TargetChatCurrent extends TargetChat {

  /// The currently opened chat and forum topic must be kept
  const TargetChatCurrent();
  
  /// Parse from a json
  factory TargetChatCurrent.fromJson(Map<String, dynamic> json) => const TargetChatCurrent();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TargetChatCurrent copyWith() => const TargetChatCurrent();

  static const CONSTRUCTOR = 'targetChatCurrent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TargetChatChosen extends TargetChat {

  /// The chat needs to be chosen by the user among chats of the specified types
  const TargetChatChosen({
    required this.types,
  });
  
  /// [types] Allowed types for the chat
  final TargetChatTypes types;
  
  /// Parse from a json
  factory TargetChatChosen.fromJson(Map<String, dynamic> json) => TargetChatChosen(
    types: TargetChatTypes.fromJson(json['types']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "types": types.toJson(),
    };
  }
  
  @override
  TargetChatChosen copyWith({
    TargetChatTypes? types,
  }) => TargetChatChosen(
    types: types ?? this.types,
  );

  static const CONSTRUCTOR = 'targetChatChosen';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TargetChatInternalLink extends TargetChat {

  /// The chat needs to be open with the provided internal link
  const TargetChatInternalLink({
    required this.link,
  });
  
  /// [link] An internal link pointing to the chat
  final InternalLinkType link;
  
  /// Parse from a json
  factory TargetChatInternalLink.fromJson(Map<String, dynamic> json) => TargetChatInternalLink(
    link: InternalLinkType.fromJson(json['link']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link.toJson(),
    };
  }
  
  @override
  TargetChatInternalLink copyWith({
    InternalLinkType? link,
  }) => TargetChatInternalLink(
    link: link ?? this.link,
  );

  static const CONSTRUCTOR = 'targetChatInternalLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
