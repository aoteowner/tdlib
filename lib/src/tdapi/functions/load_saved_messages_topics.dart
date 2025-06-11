import '../tdapi.dart';

class LoadSavedMessagesTopics extends TdFunction {

  /// Loads more Saved Messages topics. The loaded topics will be sent through updateSavedMessagesTopic. Topics are sorted by their topic.order in descending order. Returns a 404 error if all topics have been loaded
  const LoadSavedMessagesTopics({
    required this.limit,
  });
  
  /// [limit] The maximum number of topics to be loaded. For optimal performance, the number of loaded topics is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  LoadSavedMessagesTopics copyWith({
    int? limit,
  }) => LoadSavedMessagesTopics(
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'loadSavedMessagesTopics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
