import '../tdapi.dart';

class ProfilePhoto extends TdObject {
  /// Describes a user profile photo
  const ProfilePhoto({
    required this.id,
    required this.small,
    required this.big,
    this.minithumbnail,
    required this.hasAnimation,
    required this.isPersonal,
  });

  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of user profile photos
  final int id;

  /// [small] A small (160x160) user profile photo. The file can be downloaded only before the photo is changed
  final File small;

  /// [big] A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
  final File big;

  /// [minithumbnail] User profile photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;

  /// [isPersonal] True, if the photo is visible only for the current user
  final bool isPersonal;

  factory ProfilePhoto.fromJson(Map<String, dynamic> json) => ProfilePhoto(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        small: File.fromJson(json['small'] ?? {}),
        big: File.fromJson(json['big'] ?? {}),
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail'] ?? {}),
        hasAnimation: json['has_animation'] ?? false,
        isPersonal: json['is_personal'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "small": small.toJson(),
      "big": big.toJson(),
      "minithumbnail": minithumbnail?.toJson(),
      "has_animation": hasAnimation,
      "is_personal": isPersonal,
    };
  }

  ProfilePhoto copyWith({
    int? id,
    File? small,
    File? big,
    Minithumbnail? minithumbnail,
    bool? hasAnimation,
    bool? isPersonal,
  }) {
    return ProfilePhoto(
      id: id ?? this.id,
      small: small ?? this.small,
      big: big ?? this.big,
      minithumbnail: minithumbnail ?? this.minithumbnail,
      hasAnimation: hasAnimation ?? this.hasAnimation,
      isPersonal: isPersonal ?? this.isPersonal,
    );
  }

  static const CONSTRUCTOR = 'profilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
