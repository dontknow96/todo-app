// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListBlocState {
  ListState get state => throw _privateConstructorUsedError;
  ListModel get list => throw _privateConstructorUsedError;
  Map<int, (ItemModel, Map<int, CommentModel>)> get items =>
      throw _privateConstructorUsedError;
  Map<int, PermissionModel> get permissions =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListBlocStateCopyWith<ListBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBlocStateCopyWith<$Res> {
  factory $ListBlocStateCopyWith(
          ListBlocState value, $Res Function(ListBlocState) then) =
      _$ListBlocStateCopyWithImpl<$Res, ListBlocState>;
  @useResult
  $Res call(
      {ListState state,
      ListModel list,
      Map<int, (ItemModel, Map<int, CommentModel>)> items,
      Map<int, PermissionModel> permissions,
      String? error});

  $ListModelCopyWith<$Res> get list;
}

/// @nodoc
class _$ListBlocStateCopyWithImpl<$Res, $Val extends ListBlocState>
    implements $ListBlocStateCopyWith<$Res> {
  _$ListBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? list = null,
    Object? items = null,
    Object? permissions = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ListState,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListModel,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<int, (ItemModel, Map<int, CommentModel>)>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<int, PermissionModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListModelCopyWith<$Res> get list {
    return $ListModelCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListBlocStateImplCopyWith<$Res>
    implements $ListBlocStateCopyWith<$Res> {
  factory _$$ListBlocStateImplCopyWith(
          _$ListBlocStateImpl value, $Res Function(_$ListBlocStateImpl) then) =
      __$$ListBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListState state,
      ListModel list,
      Map<int, (ItemModel, Map<int, CommentModel>)> items,
      Map<int, PermissionModel> permissions,
      String? error});

  @override
  $ListModelCopyWith<$Res> get list;
}

/// @nodoc
class __$$ListBlocStateImplCopyWithImpl<$Res>
    extends _$ListBlocStateCopyWithImpl<$Res, _$ListBlocStateImpl>
    implements _$$ListBlocStateImplCopyWith<$Res> {
  __$$ListBlocStateImplCopyWithImpl(
      _$ListBlocStateImpl _value, $Res Function(_$ListBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? list = null,
    Object? items = null,
    Object? permissions = null,
    Object? error = freezed,
  }) {
    return _then(_$ListBlocStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ListState,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListModel,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<int, (ItemModel, Map<int, CommentModel>)>,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<int, PermissionModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListBlocStateImpl implements _ListBlocState {
  const _$ListBlocStateImpl(
      {required this.state,
      required this.list,
      required final Map<int, (ItemModel, Map<int, CommentModel>)> items,
      required final Map<int, PermissionModel> permissions,
      this.error})
      : _items = items,
        _permissions = permissions;

  @override
  final ListState state;
  @override
  final ListModel list;
  final Map<int, (ItemModel, Map<int, CommentModel>)> _items;
  @override
  Map<int, (ItemModel, Map<int, CommentModel>)> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  final Map<int, PermissionModel> _permissions;
  @override
  Map<int, PermissionModel> get permissions {
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_permissions);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'ListBlocState(state: $state, list: $list, items: $items, permissions: $permissions, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListBlocStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.list, list) || other.list == list) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      list,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_permissions),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListBlocStateImplCopyWith<_$ListBlocStateImpl> get copyWith =>
      __$$ListBlocStateImplCopyWithImpl<_$ListBlocStateImpl>(this, _$identity);
}

abstract class _ListBlocState implements ListBlocState {
  const factory _ListBlocState(
      {required final ListState state,
      required final ListModel list,
      required final Map<int, (ItemModel, Map<int, CommentModel>)> items,
      required final Map<int, PermissionModel> permissions,
      final String? error}) = _$ListBlocStateImpl;

  @override
  ListState get state;
  @override
  ListModel get list;
  @override
  Map<int, (ItemModel, Map<int, CommentModel>)> get items;
  @override
  Map<int, PermissionModel> get permissions;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ListBlocStateImplCopyWith<_$ListBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
