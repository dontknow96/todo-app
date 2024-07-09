// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListModel _$ListModelFromJson(Map<String, dynamic> json) {
  return _ListModel.fromJson(json);
}

/// @nodoc
mixin _$ListModel {
  int get id => throw _privateConstructorUsedError;
  int get ownerid => throw _privateConstructorUsedError;
  String get ownerusername => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListModelCopyWith<ListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListModelCopyWith<$Res> {
  factory $ListModelCopyWith(ListModel value, $Res Function(ListModel) then) =
      _$ListModelCopyWithImpl<$Res, ListModel>;
  @useResult
  $Res call(
      {int id,
      int ownerid,
      String ownerusername,
      String title,
      String description});
}

/// @nodoc
class _$ListModelCopyWithImpl<$Res, $Val extends ListModel>
    implements $ListModelCopyWith<$Res> {
  _$ListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerid = null,
    Object? ownerusername = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerid: null == ownerid
          ? _value.ownerid
          : ownerid // ignore: cast_nullable_to_non_nullable
              as int,
      ownerusername: null == ownerusername
          ? _value.ownerusername
          : ownerusername // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListModelImplCopyWith<$Res>
    implements $ListModelCopyWith<$Res> {
  factory _$$ListModelImplCopyWith(
          _$ListModelImpl value, $Res Function(_$ListModelImpl) then) =
      __$$ListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int ownerid,
      String ownerusername,
      String title,
      String description});
}

/// @nodoc
class __$$ListModelImplCopyWithImpl<$Res>
    extends _$ListModelCopyWithImpl<$Res, _$ListModelImpl>
    implements _$$ListModelImplCopyWith<$Res> {
  __$$ListModelImplCopyWithImpl(
      _$ListModelImpl _value, $Res Function(_$ListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerid = null,
    Object? ownerusername = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$ListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerid: null == ownerid
          ? _value.ownerid
          : ownerid // ignore: cast_nullable_to_non_nullable
              as int,
      ownerusername: null == ownerusername
          ? _value.ownerusername
          : ownerusername // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListModelImpl implements _ListModel {
  const _$ListModelImpl(
      {required this.id,
      required this.ownerid,
      required this.ownerusername,
      required this.title,
      required this.description});

  factory _$ListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListModelImplFromJson(json);

  @override
  final int id;
  @override
  final int ownerid;
  @override
  final String ownerusername;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'ListModel(id: $id, ownerid: $ownerid, ownerusername: $ownerusername, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerid, ownerid) || other.ownerid == ownerid) &&
            (identical(other.ownerusername, ownerusername) ||
                other.ownerusername == ownerusername) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, ownerid, ownerusername, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListModelImplCopyWith<_$ListModelImpl> get copyWith =>
      __$$ListModelImplCopyWithImpl<_$ListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListModelImplToJson(
      this,
    );
  }
}

abstract class _ListModel implements ListModel {
  const factory _ListModel(
      {required final int id,
      required final int ownerid,
      required final String ownerusername,
      required final String title,
      required final String description}) = _$ListModelImpl;

  factory _ListModel.fromJson(Map<String, dynamic> json) =
      _$ListModelImpl.fromJson;

  @override
  int get id;
  @override
  int get ownerid;
  @override
  String get ownerusername;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ListModelImplCopyWith<_$ListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
