// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PermissionModelImpl _$$PermissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PermissionModelImpl(
      listid: (json['listid'] as num?)?.toInt(),
      userid: (json['userid'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$PermissionModelImplToJson(
        _$PermissionModelImpl instance) =>
    <String, dynamic>{
      'listid': instance.listid,
      'userid': instance.userid,
      'username': instance.username,
    };
