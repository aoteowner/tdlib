part of '../tdapi.dart';

class EncryptGroupCallData extends TdFunction {

  /// Encrypts group call data before sending them over network using tgcalls
  const EncryptGroupCallData({
    required this.groupCallId,
    required this.dataChannel,
    required this.data,
    required this.unencryptedPrefixSize,
  });
  
  /// [groupCallId] Group call identifier. The call must not be a video chat
  final int groupCallId;

  /// [dataChannel] Data channel for which data is encrypted
  final GroupCallDataChannel dataChannel;

  /// [data] Data to encrypt
  final String data;

  /// [unencryptedPrefixSize] Size of data prefix that must be kept unencrypted
  final int unencryptedPrefixSize;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "data_channel": dataChannel.toJson(),
      "data": data,
      "unencrypted_prefix_size": unencryptedPrefixSize,
      "@extra": extra,
    };
  }
  
  EncryptGroupCallData copyWith({
    int? groupCallId,
    GroupCallDataChannel? dataChannel,
    String? data,
    int? unencryptedPrefixSize,
  }) => EncryptGroupCallData(
    groupCallId: groupCallId ?? this.groupCallId,
    dataChannel: dataChannel ?? this.dataChannel,
    data: data ?? this.data,
    unencryptedPrefixSize: unencryptedPrefixSize ?? this.unencryptedPrefixSize,
  );

  static const CONSTRUCTOR = 'encryptGroupCallData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
