import '../tdapi.dart';

class SetBusinessAccountProfilePhoto extends TdFunction {

  /// Changes a profile photo of a business account; for bots only
  const SetBusinessAccountProfilePhoto({
    required this.businessConnectionId,
    this.photo,
    required this.isPublic,
  });
  
  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [photo] Profile photo to set; pass null to remove the photo
  final InputChatPhoto? photo;

  /// [isPublic] Pass true to set the public photo, which will be visible even the main photo is hidden by privacy settings
  final bool isPublic;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "photo": photo?.toJson(),
      "is_public": isPublic,
      "@extra": extra,
    };
  }
  
  SetBusinessAccountProfilePhoto copyWith({
    String? businessConnectionId,
    InputChatPhoto? photo,
    bool? isPublic,
  }) => SetBusinessAccountProfilePhoto(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    photo: photo ?? this.photo,
    isPublic: isPublic ?? this.isPublic,
  );

  static const CONSTRUCTOR = 'setBusinessAccountProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
