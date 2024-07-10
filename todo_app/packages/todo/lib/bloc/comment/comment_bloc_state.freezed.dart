// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentBlocState {
  CommentState get state => throw _privateConstructorUsedError;
  CommentModel get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentBlocStateCopyWith<CommentBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentBlocStateCopyWith<$Res> {
  factory $CommentBlocStateCopyWith(
          CommentBlocState value, $Res Function(CommentBlocState) then) =
      _$CommentBlocStateCopyWithImpl<$Res, CommentBlocState>;
  @useResult
  $Res call({CommentState state, CommentModel comment});

  $CommentModelCopyWith<$Res> get comment;
}

/// @nodoc
class _$CommentBlocStateCopyWithImpl<$Res, $Val extends CommentBlocState>
    implements $CommentBlocStateCopyWith<$Res> {
  _$CommentBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CommentState,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res> get comment {
    return $CommentModelCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentBlocStateImplCopyWith<$Res>
    implements $CommentBlocStateCopyWith<$Res> {
  factory _$$CommentBlocStateImplCopyWith(_$CommentBlocStateImpl value,
          $Res Function(_$CommentBlocStateImpl) then) =
      __$$CommentBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentState state, CommentModel comment});

  @override
  $CommentModelCopyWith<$Res> get comment;
}

/// @nodoc
class __$$CommentBlocStateImplCopyWithImpl<$Res>
    extends _$CommentBlocStateCopyWithImpl<$Res, _$CommentBlocStateImpl>
    implements _$$CommentBlocStateImplCopyWith<$Res> {
  __$$CommentBlocStateImplCopyWithImpl(_$CommentBlocStateImpl _value,
      $Res Function(_$CommentBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
  }) {
    return _then(_$CommentBlocStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CommentState,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel,
    ));
  }
}

/// @nodoc

class _$CommentBlocStateImpl implements _CommentBlocState {
  const _$CommentBlocStateImpl({required this.state, required this.comment});

  @override
  final CommentState state;
  @override
  final CommentModel comment;

  @override
  String toString() {
    return 'CommentBlocState(state: $state, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentBlocStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentBlocStateImplCopyWith<_$CommentBlocStateImpl> get copyWith =>
      __$$CommentBlocStateImplCopyWithImpl<_$CommentBlocStateImpl>(
          this, _$identity);
}

abstract class _CommentBlocState implements CommentBlocState {
  const factory _CommentBlocState(
      {required final CommentState state,
      required final CommentModel comment}) = _$CommentBlocStateImpl;

  @override
  CommentState get state;
  @override
  CommentModel get comment;
  @override
  @JsonKey(ignore: true)
  _$$CommentBlocStateImplCopyWith<_$CommentBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
