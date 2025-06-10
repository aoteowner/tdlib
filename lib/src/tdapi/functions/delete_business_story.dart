part of '../tdapi.dart';

class DeleteBusinessStory extends TdFunction {

  /// Deletes a story posted by the bot on behalf of a business account; for bots only
  const DeleteBusinessStory({
    required this.businessConnectionId,
    required this.storyId,
  });
  
  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [storyId] Identifier of the story to delete
  final int storyId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "story_id": storyId,
      "@extra": extra,
    };
  }
  
  DeleteBusinessStory copyWith({
    String? businessConnectionId,
    int? storyId,
  }) => DeleteBusinessStory(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    storyId: storyId ?? this.storyId,
  );

  static const CONSTRUCTOR = 'deleteBusinessStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
