// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      id: json['id'] as String,
      fromId: json['fromId'] as String,
      toId: json['toId'] as String,
      chatId: json['chatId'] as String,
      type: json['type'] as String,
      isViewed: json['isViewed'] as bool,
      createdAt: json['createdAt'] as int,
      content: json['content'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromId': instance.fromId,
      'toId': instance.toId,
      'chatId': instance.chatId,
      'type': instance.type,
      'isViewed': instance.isViewed,
      'createdAt': instance.createdAt,
      'content': instance.content,
      'thumbnailUrl': instance.thumbnailUrl,
    };
