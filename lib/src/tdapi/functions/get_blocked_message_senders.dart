import '../tdapi.dart';

class GetBlockedMessageSenders extends TdFunction {
  /// Returns users and chats that were blocked by the current user
  const GetBlockedMessageSenders({
    required this.blockList,
    required this.offset,
    required this.limit,
  });

  /// [blockList] Block list from which to return users
  final BlockList blockList;

  /// [offset] Number of users and chats to skip in the result; must be non-negative
  final int offset;

  /// [limit] The maximum number of users and chats to return; up to 100
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "block_list": blockList.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetBlockedMessageSenders copyWith({
    BlockList? blockList,
    int? offset,
    int? limit,
  }) {
    return GetBlockedMessageSenders(
      blockList: blockList ?? this.blockList,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'getBlockedMessageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
