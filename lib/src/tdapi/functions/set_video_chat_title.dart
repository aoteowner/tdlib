part of '../tdapi.dart';

class SetVideoChatTitle extends TdFunction {

  /// Sets title of a video chat; requires groupCall.can_be_managed right
  const SetVideoChatTitle({
    required this.groupCallId,
    required this.title,
  });
  
  /// [groupCallId] Group call identifier 
  final int groupCallId;

  /// [title] New group call title; 1-64 characters
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "title": title,
      "@extra": extra,
    };
  }
  
  SetVideoChatTitle copyWith({
    int? groupCallId,
    String? title,
  }) => SetVideoChatTitle(
    groupCallId: groupCallId ?? this.groupCallId,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'setVideoChatTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
