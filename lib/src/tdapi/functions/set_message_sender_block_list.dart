import '../tdapi.dart';

class SetMessageSenderBlockList extends TdFunction {
  /// Changes the block list of a message sender. Currently, only users and supergroup chats can be blocked
  const SetMessageSenderBlockList({
    required this.senderId,
    this.blockList,
  });

  /// [senderId] Identifier of a message sender to block/unblock
  final MessageSender senderId;

  /// [blockList] New block list for the message sender; pass null to unblock the message sender
  final BlockList? blockList;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_id": senderId.toJson(),
      "block_list": blockList?.toJson(),
      "@extra": extra,
    };
  }

  SetMessageSenderBlockList copyWith({
    MessageSender? senderId,
    BlockList? blockList,
  }) {
    return SetMessageSenderBlockList(
      senderId: senderId ?? this.senderId,
      blockList: blockList ?? this.blockList,
    );
  }

  static const CONSTRUCTOR = 'setMessageSenderBlockList';

  @override
  String getConstructor() => CONSTRUCTOR;
}
