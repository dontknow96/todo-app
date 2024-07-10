// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemBlocState {
  ItemState get state => throw _privateConstructorUsedError;
  ItemModel get item => throw _privateConstructorUsedError;
  Iterable<CommentModel> get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemBlocStateCopyWith<ItemBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemBlocStateCopyWith<$Res> {
  factory $ItemBlocStateCopyWith(
          ItemBlocState value, $Res Function(ItemBlocState) then) =
      _$ItemBlocStateCopyWithImpl<$Res, ItemBlocState>;
  @useResult
  $Res call({ItemState state, ItemModel item, Iterable<CommentModel> comments});

  $ItemModelCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemBlocStateCopyWithImpl<$Res, $Val extends ItemBlocState>
    implements $ItemBlocStateCopyWith<$Res> {
  _$ItemBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? item = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ItemState,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Iterable<CommentModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemModelCopyWith<$Res> get item {
    return $ItemModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemBlocStateImplCopyWith<$Res>
    implements $ItemBlocStateCopyWith<$Res> {
  factory _$$ItemBlocStateImplCopyWith(
          _$ItemBlocStateImpl value, $Res Function(_$ItemBlocStateImpl) then) =
      __$$ItemBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemState state, ItemModel item, Iterable<CommentModel> comments});

  @override
  $ItemModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemBlocStateImplCopyWithImpl<$Res>
    extends _$ItemBlocStateCopyWithImpl<$Res, _$ItemBlocStateImpl>
    implements _$$ItemBlocStateImplCopyWith<$Res> {
  __$$ItemBlocStateImplCopyWithImpl(
      _$ItemBlocStateImpl _value, $Res Function(_$ItemBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? item = null,
    Object? comments = null,
  }) {
    return _then(_$ItemBlocStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ItemState,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Iterable<CommentModel>,
    ));
  }
}

/// @nodoc

class _$ItemBlocStateImpl implements _ItemBlocState {
  const _$ItemBlocStateImpl(
      {required this.state, required this.item, required this.comments});

  @override
  final ItemState state;
  @override
  final ItemModel item;
  @override
  final Iterable<CommentModel> comments;

  @override
  String toString() {
    return 'ItemBlocState(state: $state, item: $item, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemBlocStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, state, item, const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemBlocStateImplCopyWith<_$ItemBlocStateImpl> get copyWith =>
      __$$ItemBlocStateImplCopyWithImpl<_$ItemBlocStateImpl>(this, _$identity);
}

abstract class _ItemBlocState implements ItemBlocState {
  const factory _ItemBlocState(
      {required final ItemState state,
      required final ItemModel item,
      required final Iterable<CommentModel> comments}) = _$ItemBlocStateImpl;

  @override
  ItemState get state;
  @override
  ItemModel get item;
  @override
  Iterable<CommentModel> get comments;
  @override
  @JsonKey(ignore: true)
  _$$ItemBlocStateImplCopyWith<_$ItemBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
