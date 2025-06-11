import '../tdapi.dart';

class InputStoryAreaType extends TdObject {

  /// Describes type of clickable area on a story media to be added
  const InputStoryAreaType();
  
  /// a InputStoryAreaType return type can be :
  /// * [InputStoryAreaTypeLocation]
  /// * [InputStoryAreaTypeFoundVenue]
  /// * [InputStoryAreaTypePreviousVenue]
  /// * [InputStoryAreaTypeSuggestedReaction]
  /// * [InputStoryAreaTypeMessage]
  /// * [InputStoryAreaTypeLink]
  /// * [InputStoryAreaTypeWeather]
  /// * [InputStoryAreaTypeUpgradedGift]
  factory InputStoryAreaType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputStoryAreaTypeLocation.CONSTRUCTOR:
        return InputStoryAreaTypeLocation.fromJson(json);
      case InputStoryAreaTypeFoundVenue.CONSTRUCTOR:
        return InputStoryAreaTypeFoundVenue.fromJson(json);
      case InputStoryAreaTypePreviousVenue.CONSTRUCTOR:
        return InputStoryAreaTypePreviousVenue.fromJson(json);
      case InputStoryAreaTypeSuggestedReaction.CONSTRUCTOR:
        return InputStoryAreaTypeSuggestedReaction.fromJson(json);
      case InputStoryAreaTypeMessage.CONSTRUCTOR:
        return InputStoryAreaTypeMessage.fromJson(json);
      case InputStoryAreaTypeLink.CONSTRUCTOR:
        return InputStoryAreaTypeLink.fromJson(json);
      case InputStoryAreaTypeWeather.CONSTRUCTOR:
        return InputStoryAreaTypeWeather.fromJson(json);
      case InputStoryAreaTypeUpgradedGift.CONSTRUCTOR:
        return InputStoryAreaTypeUpgradedGift.fromJson(json);
      default:
        return const InputStoryAreaType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputStoryAreaType copyWith() => const InputStoryAreaType();

  static const CONSTRUCTOR = 'inputStoryAreaType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypeLocation extends InputStoryAreaType {

  /// An area pointing to a location
  const InputStoryAreaTypeLocation({
    required this.location,
    this.address,
  });
  
  /// [location] The location 
  final Location location;

  /// [address] Address of the location; pass null if unknown
  final LocationAddress? address;
  
  /// Parse from a json
  factory InputStoryAreaTypeLocation.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeLocation(
    location: Location.fromJson(json['location']),
    address: json['address'] == null ? null : LocationAddress.fromJson(json['address']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "address": address?.toJson(),
    };
  }
  
  @override
  InputStoryAreaTypeLocation copyWith({
    Location? location,
    LocationAddress? address,
  }) => InputStoryAreaTypeLocation(
    location: location ?? this.location,
    address: address ?? this.address,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypeLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypeFoundVenue extends InputStoryAreaType {

  /// An area pointing to a venue found by the bot getOption("venue_search_bot_username")
  const InputStoryAreaTypeFoundVenue({
    required this.queryId,
    required this.resultId,
  });
  
  /// [queryId] Identifier of the inline query, used to found the venue
  final int queryId;

  /// [resultId] Identifier of the inline query result
  final String resultId;
  
  /// Parse from a json
  factory InputStoryAreaTypeFoundVenue.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeFoundVenue(
    queryId: int.parse(json['query_id']),
    resultId: json['result_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query_id": queryId,
      "result_id": resultId,
    };
  }
  
  @override
  InputStoryAreaTypeFoundVenue copyWith({
    int? queryId,
    String? resultId,
  }) => InputStoryAreaTypeFoundVenue(
    queryId: queryId ?? this.queryId,
    resultId: resultId ?? this.resultId,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypeFoundVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypePreviousVenue extends InputStoryAreaType {

  /// An area pointing to a venue already added to the story
  const InputStoryAreaTypePreviousVenue({
    required this.venueProvider,
    required this.venueId,
  });
  
  /// [venueProvider] Provider of the venue
  final String venueProvider;

  /// [venueId] Identifier of the venue in the provider database
  final String venueId;
  
  /// Parse from a json
  factory InputStoryAreaTypePreviousVenue.fromJson(Map<String, dynamic> json) => InputStoryAreaTypePreviousVenue(
    venueProvider: json['venue_provider'],
    venueId: json['venue_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "venue_provider": venueProvider,
      "venue_id": venueId,
    };
  }
  
  @override
  InputStoryAreaTypePreviousVenue copyWith({
    String? venueProvider,
    String? venueId,
  }) => InputStoryAreaTypePreviousVenue(
    venueProvider: venueProvider ?? this.venueProvider,
    venueId: venueId ?? this.venueId,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypePreviousVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypeSuggestedReaction extends InputStoryAreaType {

  /// An area pointing to a suggested reaction
  const InputStoryAreaTypeSuggestedReaction({
    required this.reactionType,
    required this.isDark,
    required this.isFlipped,
  });
  
  /// [reactionType] Type of the reaction
  final ReactionType reactionType;

  /// [isDark] True, if reaction has a dark background
  final bool isDark;

  /// [isFlipped] True, if reaction corner is flipped
  final bool isFlipped;
  
  /// Parse from a json
  factory InputStoryAreaTypeSuggestedReaction.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeSuggestedReaction(
    reactionType: ReactionType.fromJson(json['reaction_type']),
    isDark: json['is_dark'],
    isFlipped: json['is_flipped'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reaction_type": reactionType.toJson(),
      "is_dark": isDark,
      "is_flipped": isFlipped,
    };
  }
  
  @override
  InputStoryAreaTypeSuggestedReaction copyWith({
    ReactionType? reactionType,
    bool? isDark,
    bool? isFlipped,
  }) => InputStoryAreaTypeSuggestedReaction(
    reactionType: reactionType ?? this.reactionType,
    isDark: isDark ?? this.isDark,
    isFlipped: isFlipped ?? this.isFlipped,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypeSuggestedReaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypeMessage extends InputStoryAreaType {

  /// An area pointing to a message
  const InputStoryAreaTypeMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat with the message. Currently, the chat must be a supergroup or a channel chat
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_be_shared_in_story to check whether the message is suitable
  final int messageId;
  
  /// Parse from a json
  factory InputStoryAreaTypeMessage.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeMessage(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
  
  @override
  InputStoryAreaTypeMessage copyWith({
    int? chatId,
    int? messageId,
  }) => InputStoryAreaTypeMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypeMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypeLink extends InputStoryAreaType {

  /// An area pointing to a HTTP or tg:// link
  const InputStoryAreaTypeLink({
    required this.url,
  });
  
  /// [url] HTTP or tg:// URL to be opened when the area is clicked
  final String url;
  
  /// Parse from a json
  factory InputStoryAreaTypeLink.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeLink(
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }
  
  @override
  InputStoryAreaTypeLink copyWith({
    String? url,
  }) => InputStoryAreaTypeLink(
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypeLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypeWeather extends InputStoryAreaType {

  /// An area with information about weather
  const InputStoryAreaTypeWeather({
    required this.temperature,
    required this.emoji,
    required this.backgroundColor,
  });
  
  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  /// [backgroundColor] A color of the area background in the ARGB format
  final int backgroundColor;
  
  /// Parse from a json
  factory InputStoryAreaTypeWeather.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeWeather(
    temperature: json['temperature'],
    emoji: json['emoji'],
    backgroundColor: json['background_color'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "temperature": temperature,
      "emoji": emoji,
      "background_color": backgroundColor,
    };
  }
  
  @override
  InputStoryAreaTypeWeather copyWith({
    double? temperature,
    String? emoji,
    int? backgroundColor,
  }) => InputStoryAreaTypeWeather(
    temperature: temperature ?? this.temperature,
    emoji: emoji ?? this.emoji,
    backgroundColor: backgroundColor ?? this.backgroundColor,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypeWeather';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStoryAreaTypeUpgradedGift extends InputStoryAreaType {

  /// An area with an upgraded gift
  const InputStoryAreaTypeUpgradedGift({
    required this.giftName,
  });
  
  /// [giftName] Unique name of the upgraded gift
  final String giftName;
  
  /// Parse from a json
  factory InputStoryAreaTypeUpgradedGift.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeUpgradedGift(
    giftName: json['gift_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift_name": giftName,
    };
  }
  
  @override
  InputStoryAreaTypeUpgradedGift copyWith({
    String? giftName,
  }) => InputStoryAreaTypeUpgradedGift(
    giftName: giftName ?? this.giftName,
  );

  static const CONSTRUCTOR = 'inputStoryAreaTypeUpgradedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
