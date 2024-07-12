// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListModelImpl _$$ListModelImplFromJson(Map<String, dynamic> json) =>
    _$ListModelImpl(
      id: (json['id'] as num).toInt(),
      ownerid: (json['ownerid'] as num).toInt(),
      ownerusername: json['ownerusername'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$ListModelImplToJson(_$ListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerid': instance.ownerid,
      'ownerusername': instance.ownerusername,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
    };
