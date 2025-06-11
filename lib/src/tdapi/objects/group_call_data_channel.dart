import '../tdapi.dart';

class GroupCallDataChannel extends TdObject {

  /// Describes data channel for a group call
  const GroupCallDataChannel();
  
  /// a GroupCallDataChannel return type can be :
  /// * [GroupCallDataChannelMain]
  /// * [GroupCallDataChannelScreenSharing]
  factory GroupCallDataChannel.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case GroupCallDataChannelMain.CONSTRUCTOR:
        return GroupCallDataChannelMain.fromJson(json);
      case GroupCallDataChannelScreenSharing.CONSTRUCTOR:
        return GroupCallDataChannelScreenSharing.fromJson(json);
      default:
        return const GroupCallDataChannel();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  GroupCallDataChannel copyWith() => const GroupCallDataChannel();

  static const CONSTRUCTOR = 'groupCallDataChannel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallDataChannelMain extends GroupCallDataChannel {

  /// The main data channel for audio and video data
  const GroupCallDataChannelMain();
  
  /// Parse from a json
  factory GroupCallDataChannelMain.fromJson(Map<String, dynamic> json) => const GroupCallDataChannelMain();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  GroupCallDataChannelMain copyWith() => const GroupCallDataChannelMain();

  static const CONSTRUCTOR = 'groupCallDataChannelMain';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallDataChannelScreenSharing extends GroupCallDataChannel {

  /// The data channel for screen sharing
  const GroupCallDataChannelScreenSharing();
  
  /// Parse from a json
  factory GroupCallDataChannelScreenSharing.fromJson(Map<String, dynamic> json) => const GroupCallDataChannelScreenSharing();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  GroupCallDataChannelScreenSharing copyWith() => const GroupCallDataChannelScreenSharing();

  static const CONSTRUCTOR = 'groupCallDataChannelScreenSharing';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
