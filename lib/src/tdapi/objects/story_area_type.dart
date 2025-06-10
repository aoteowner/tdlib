part of '../tdapi.dart';

class StoryAreaType extends TdObject {

  /// Describes type of clickable area on a story media
  const StoryAreaType();
  
  /// a StoryAreaType return type can be :
  /// * [StoryAreaTypeLocation]
  /// * [StoryAreaTypeVenue]
  /// * [StoryAreaTypeSuggestedReaction]
  /// * [StoryAreaTypeMessage]
  /// * [StoryAreaTypeLink]
  /// * [StoryAreaTypeWeather]
  /// * [StoryAreaTypeUpgradedGift]
  factory StoryAreaType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StoryAreaTypeLocation.CONSTRUCTOR:
        return StoryAreaTypeLocation.fromJson(json);
      case StoryAreaTypeVenue.CONSTRUCTOR:
        return StoryAreaTypeVenue.fromJson(json);
      case StoryAreaTypeSuggestedReaction.CONSTRUCTOR:
        return StoryAreaTypeSuggestedReaction.fromJson(json);
      case StoryAreaTypeMessage.CONSTRUCTOR:
        return StoryAreaTypeMessage.fromJson(json);
      case StoryAreaTypeLink.CONSTRUCTOR:
        return StoryAreaTypeLink.fromJson(json);
      case StoryAreaTypeWeather.CONSTRUCTOR:
        return StoryAreaTypeWeather.fromJson(json);
      case StoryAreaTypeUpgradedGift.CONSTRUCTOR:
        return StoryAreaTypeUpgradedGift.fromJson(json);
      default:
        return const StoryAreaType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StoryAreaType copyWith() => const StoryAreaType();

  static const CONSTRUCTOR = 'storyAreaType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoryAreaTypeLocation extends StoryAreaType {

  /// An area pointing to a location
  const StoryAreaTypeLocation({
    required this.location,
    this.address,
  });
  
  /// [location] The location 
  final Location location;

  /// [address] Address of the location; may be null if unknown
  final LocationAddress? address;
  
  /// Parse from a json
  factory StoryAreaTypeLocation.fromJson(Map<String, dynamic> json) => StoryAreaTypeLocation(
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
  StoryAreaTypeLocation copyWith({
    Location? location,
    LocationAddress? address,
  }) => StoryAreaTypeLocation(
    location: location ?? this.location,
    address: address ?? this.address,
  );

  static const CONSTRUCTOR = 'storyAreaTypeLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoryAreaTypeVenue extends StoryAreaType {

  /// An area pointing to a venue
  const StoryAreaTypeVenue({
    required this.venue,
  });
  
  /// [venue] Information about the venue
  final Venue venue;
  
  /// Parse from a json
  factory StoryAreaTypeVenue.fromJson(Map<String, dynamic> json) => StoryAreaTypeVenue(
    venue: Venue.fromJson(json['venue']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "venue": venue.toJson(),
    };
  }
  
  @override
  StoryAreaTypeVenue copyWith({
    Venue? venue,
  }) => StoryAreaTypeVenue(
    venue: venue ?? this.venue,
  );

  static const CONSTRUCTOR = 'storyAreaTypeVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoryAreaTypeSuggestedReaction extends StoryAreaType {

  /// An area pointing to a suggested reaction. App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked
  const StoryAreaTypeSuggestedReaction({
    required this.reactionType,
    required this.totalCount,
    required this.isDark,
    required this.isFlipped,
  });
  
  /// [reactionType] Type of the reaction
  final ReactionType reactionType;

  /// [totalCount] Number of times the reaction was added
  final int totalCount;

  /// [isDark] True, if reaction has a dark background
  final bool isDark;

  /// [isFlipped] True, if reaction corner is flipped
  final bool isFlipped;
  
  /// Parse from a json
  factory StoryAreaTypeSuggestedReaction.fromJson(Map<String, dynamic> json) => StoryAreaTypeSuggestedReaction(
    reactionType: ReactionType.fromJson(json['reaction_type']),
    totalCount: json['total_count'],
    isDark: json['is_dark'],
    isFlipped: json['is_flipped'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reaction_type": reactionType.toJson(),
      "total_count": totalCount,
      "is_dark": isDark,
      "is_flipped": isFlipped,
    };
  }
  
  @override
  StoryAreaTypeSuggestedReaction copyWith({
    ReactionType? reactionType,
    int? totalCount,
    bool? isDark,
    bool? isFlipped,
  }) => StoryAreaTypeSuggestedReaction(
    reactionType: reactionType ?? this.reactionType,
    totalCount: totalCount ?? this.totalCount,
    isDark: isDark ?? this.isDark,
    isFlipped: isFlipped ?? this.isFlipped,
  );

  static const CONSTRUCTOR = 'storyAreaTypeSuggestedReaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoryAreaTypeMessage extends StoryAreaType {

  /// An area pointing to a message
  const StoryAreaTypeMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat with the message 
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;
  
  /// Parse from a json
  factory StoryAreaTypeMessage.fromJson(Map<String, dynamic> json) => StoryAreaTypeMessage(
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
  StoryAreaTypeMessage copyWith({
    int? chatId,
    int? messageId,
  }) => StoryAreaTypeMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'storyAreaTypeMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoryAreaTypeLink extends StoryAreaType {

  /// An area pointing to a HTTP or tg:// link
  const StoryAreaTypeLink({
    required this.url,
  });
  
  /// [url] HTTP or tg:// URL to be opened when the area is clicked
  final String url;
  
  /// Parse from a json
  factory StoryAreaTypeLink.fromJson(Map<String, dynamic> json) => StoryAreaTypeLink(
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
  StoryAreaTypeLink copyWith({
    String? url,
  }) => StoryAreaTypeLink(
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'storyAreaTypeLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoryAreaTypeWeather extends StoryAreaType {

  /// An area with information about weather
  const StoryAreaTypeWeather({
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
  factory StoryAreaTypeWeather.fromJson(Map<String, dynamic> json) => StoryAreaTypeWeather(
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
  StoryAreaTypeWeather copyWith({
    double? temperature,
    String? emoji,
    int? backgroundColor,
  }) => StoryAreaTypeWeather(
    temperature: temperature ?? this.temperature,
    emoji: emoji ?? this.emoji,
    backgroundColor: backgroundColor ?? this.backgroundColor,
  );

  static const CONSTRUCTOR = 'storyAreaTypeWeather';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StoryAreaTypeUpgradedGift extends StoryAreaType {

  /// An area with an upgraded gift
  const StoryAreaTypeUpgradedGift({
    required this.giftName,
  });
  
  /// [giftName] Unique name of the upgraded gift
  final String giftName;
  
  /// Parse from a json
  factory StoryAreaTypeUpgradedGift.fromJson(Map<String, dynamic> json) => StoryAreaTypeUpgradedGift(
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
  StoryAreaTypeUpgradedGift copyWith({
    String? giftName,
  }) => StoryAreaTypeUpgradedGift(
    giftName: giftName ?? this.giftName,
  );

  static const CONSTRUCTOR = 'storyAreaTypeUpgradedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
