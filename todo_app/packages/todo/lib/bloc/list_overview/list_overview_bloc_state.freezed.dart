// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_overview_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListOverviewBlocState {
  Iterable<ListModel> get lists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListOverviewBlocStateCopyWith<ListOverviewBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOverviewBlocStateCopyWith<$Res> {
  factory $ListOverviewBlocStateCopyWith(ListOverviewBlocState value,
          $Res Function(ListOverviewBlocState) then) =
      _$ListOverviewBlocStateCopyWithImpl<$Res, ListOverviewBlocState>;
  @useResult
  $Res call({Iterable<ListModel> lists});
}

/// @nodoc
class _$ListOverviewBlocStateCopyWithImpl<$Res,
        $Val extends ListOverviewBlocState>
    implements $ListOverviewBlocStateCopyWith<$Res> {
  _$ListOverviewBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lists = null,
  }) {
    return _then(_value.copyWith(
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as Iterable<ListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListOverviewBlocStateImplCopyWith<$Res>
    implements $ListOverviewBlocStateCopyWith<$Res> {
  factory _$$ListOverviewBlocStateImplCopyWith(
          _$ListOverviewBlocStateImpl value,
          $Res Function(_$ListOverviewBlocStateImpl) then) =
      __$$ListOverviewBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<ListModel> lists});
}

/// @nodoc
class __$$ListOverviewBlocStateImplCopyWithImpl<$Res>
    extends _$ListOverviewBlocStateCopyWithImpl<$Res,
        _$ListOverviewBlocStateImpl>
    implements _$$ListOverviewBlocStateImplCopyWith<$Res> {
  __$$ListOverviewBlocStateImplCopyWithImpl(_$ListOverviewBlocStateImpl _value,
      $Res Function(_$ListOverviewBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lists = null,
  }) {
    return _then(_$ListOverviewBlocStateImpl(
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as Iterable<ListModel>,
    ));
  }
}

/// @nodoc

class _$ListOverviewBlocStateImpl implements _ListOverviewBlocState {
  const _$ListOverviewBlocStateImpl({required this.lists});

  @override
  final Iterable<ListModel> lists;

  @override
  String toString() {
    return 'ListOverviewBlocState(lists: $lists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOverviewBlocStateImpl &&
            const DeepCollectionEquality().equals(other.lists, lists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListOverviewBlocStateImplCopyWith<_$ListOverviewBlocStateImpl>
      get copyWith => __$$ListOverviewBlocStateImplCopyWithImpl<
          _$ListOverviewBlocStateImpl>(this, _$identity);
}

abstract class _ListOverviewBlocState implements ListOverviewBlocState {
  const factory _ListOverviewBlocState(
      {required final Iterable<ListModel> lists}) = _$ListOverviewBlocStateImpl;

  @override
  Iterable<ListModel> get lists;
  @override
  @JsonKey(ignore: true)
  _$$ListOverviewBlocStateImplCopyWith<_$ListOverviewBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
