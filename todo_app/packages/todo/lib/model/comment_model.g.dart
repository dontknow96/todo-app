// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: (json['id'] as num).toInt(),
      itemid: (json['itemid'] as num).toInt(),
      authorid: (json['authorid'] as num).toInt(),
      author: json['author'] as String,
      text: json['text'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemid': instance.itemid,
      'authorid': instance.authorid,
      'author': instance.author,
      'text': instance.text,
      'time': instance.time.toIso8601String(),
    };
