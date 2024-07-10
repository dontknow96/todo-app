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
  Iterable<(ItemModel, Iterable<CommentModel>)> get items =>
      throw _privateConstructorUsedError;

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
      Iterable<(ItemModel, Iterable<CommentModel>)> items});

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
              as Iterable<(ItemModel, Iterable<CommentModel>)>,
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
      Iterable<(ItemModel, Iterable<CommentModel>)> items});

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
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<(ItemModel, Iterable<CommentModel>)>,
    ));
  }
}

/// @nodoc

class _$ListBlocStateImpl implements _ListBlocState {
  const _$ListBlocStateImpl(
      {required this.state, required this.list, required this.items});

  @override
  final ListState state;
  @override
  final ListModel list;
  @override
  final Iterable<(ItemModel, Iterable<CommentModel>)> items;

  @override
  String toString() {
    return 'ListBlocState(state: $state, list: $list, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListBlocStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.list, list) || other.list == list) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, state, list, const DeepCollectionEquality().hash(items));

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
          required final Iterable<(ItemModel, Iterable<CommentModel>)> items}) =
      _$ListBlocStateImpl;

  @override
  ListState get state;
  @override
  ListModel get list;
  @override
  Iterable<(ItemModel, Iterable<CommentModel>)> get items;
  @override
  @JsonKey(ignore: true)
  _$$ListBlocStateImplCopyWith<_$ListBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
