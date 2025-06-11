import '../tdapi.dart';

class SetBusinessAccountBio extends TdFunction {

  /// Changes the bio of a business account; for bots only
  const SetBusinessAccountBio({
    required this.businessConnectionId,
    required this.bio,
  });
  
  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [bio] The new value of the bio; 0-getOption("bio_length_max") characters without line feeds
  final String bio;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "bio": bio,
      "@extra": extra,
    };
  }
  
  SetBusinessAccountBio copyWith({
    String? businessConnectionId,
    String? bio,
  }) => SetBusinessAccountBio(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    bio: bio ?? this.bio,
  );

  static const CONSTRUCTOR = 'setBusinessAccountBio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
