import '../tdapi.dart';

class CallProblem extends TdObject {
  /// Describes the exact type of problem with a call
  const CallProblem();

  factory CallProblem.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CallProblemEcho.CONSTRUCTOR:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.CONSTRUCTOR:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.CONSTRUCTOR:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.CONSTRUCTOR:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.CONSTRUCTOR:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.CONSTRUCTOR:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.CONSTRUCTOR:
        return CallProblemDropped.fromJson(json);
      case CallProblemDistortedVideo.CONSTRUCTOR:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemPixelatedVideo.CONSTRUCTOR:
        return CallProblemPixelatedVideo.fromJson(json);
      default:
        return const CallProblem();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  CallProblem copyWith() {
    return const CallProblem();
  }

  static const CONSTRUCTOR = 'callProblem';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemEcho extends CallProblem {
  /// The user heard their own voice
  const CallProblemEcho();

  factory CallProblemEcho.fromJson(Map<String, dynamic> json) =>
      const CallProblemEcho();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemEcho copyWith() {
    return const CallProblemEcho();
  }

  static const CONSTRUCTOR = 'callProblemEcho';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemNoise extends CallProblem {
  /// The user heard background noise
  const CallProblemNoise();

  factory CallProblemNoise.fromJson(Map<String, dynamic> json) =>
      const CallProblemNoise();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemNoise copyWith() {
    return const CallProblemNoise();
  }

  static const CONSTRUCTOR = 'callProblemNoise';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemInterruptions extends CallProblem {
  /// The other side kept disappearing
  const CallProblemInterruptions();

  factory CallProblemInterruptions.fromJson(Map<String, dynamic> json) =>
      const CallProblemInterruptions();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemInterruptions copyWith() {
    return const CallProblemInterruptions();
  }

  static const CONSTRUCTOR = 'callProblemInterruptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDistortedSpeech extends CallProblem {
  /// The speech was distorted
  const CallProblemDistortedSpeech();

  factory CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json) =>
      const CallProblemDistortedSpeech();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemDistortedSpeech copyWith() {
    return const CallProblemDistortedSpeech();
  }

  static const CONSTRUCTOR = 'callProblemDistortedSpeech';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemSilentLocal extends CallProblem {
  /// The user couldn't hear the other side
  const CallProblemSilentLocal();

  factory CallProblemSilentLocal.fromJson(Map<String, dynamic> json) =>
      const CallProblemSilentLocal();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemSilentLocal copyWith() {
    return const CallProblemSilentLocal();
  }

  static const CONSTRUCTOR = 'callProblemSilentLocal';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemSilentRemote extends CallProblem {
  /// The other side couldn't hear the user
  const CallProblemSilentRemote();

  factory CallProblemSilentRemote.fromJson(Map<String, dynamic> json) =>
      const CallProblemSilentRemote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemSilentRemote copyWith() {
    return const CallProblemSilentRemote();
  }

  static const CONSTRUCTOR = 'callProblemSilentRemote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDropped extends CallProblem {
  /// The call ended unexpectedly
  const CallProblemDropped();

  factory CallProblemDropped.fromJson(Map<String, dynamic> json) =>
      const CallProblemDropped();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemDropped copyWith() {
    return const CallProblemDropped();
  }

  static const CONSTRUCTOR = 'callProblemDropped';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDistortedVideo extends CallProblem {
  /// The video was distorted
  const CallProblemDistortedVideo();

  factory CallProblemDistortedVideo.fromJson(Map<String, dynamic> json) =>
      const CallProblemDistortedVideo();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemDistortedVideo copyWith() {
    return const CallProblemDistortedVideo();
  }

  static const CONSTRUCTOR = 'callProblemDistortedVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemPixelatedVideo extends CallProblem {
  /// The video was pixelated
  const CallProblemPixelatedVideo();

  factory CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json) =>
      const CallProblemPixelatedVideo();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallProblemPixelatedVideo copyWith() {
    return const CallProblemPixelatedVideo();
  }

  static const CONSTRUCTOR = 'callProblemPixelatedVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
