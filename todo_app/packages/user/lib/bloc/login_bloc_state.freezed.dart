// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginBlocState {
  LoginResponse get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginBlocStateCopyWith<LoginBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocStateCopyWith<$Res> {
  factory $LoginBlocStateCopyWith(
          LoginBlocState value, $Res Function(LoginBlocState) then) =
      _$LoginBlocStateCopyWithImpl<$Res, LoginBlocState>;
  @useResult
  $Res call({LoginResponse response});
}

/// @nodoc
class _$LoginBlocStateCopyWithImpl<$Res, $Val extends LoginBlocState>
    implements $LoginBlocStateCopyWith<$Res> {
  _$LoginBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginBlocStateImplCopyWith<$Res>
    implements $LoginBlocStateCopyWith<$Res> {
  factory _$$LoginBlocStateImplCopyWith(_$LoginBlocStateImpl value,
          $Res Function(_$LoginBlocStateImpl) then) =
      __$$LoginBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginResponse response});
}

/// @nodoc
class __$$LoginBlocStateImplCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res, _$LoginBlocStateImpl>
    implements _$$LoginBlocStateImplCopyWith<$Res> {
  __$$LoginBlocStateImplCopyWithImpl(
      _$LoginBlocStateImpl _value, $Res Function(_$LoginBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LoginBlocStateImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$LoginBlocStateImpl implements _LoginBlocState {
  const _$LoginBlocStateImpl({required this.response});

  @override
  final LoginResponse response;

  @override
  String toString() {
    return 'LoginBlocState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      __$$LoginBlocStateImplCopyWithImpl<_$LoginBlocStateImpl>(
          this, _$identity);
}

abstract class _LoginBlocState implements LoginBlocState {
  const factory _LoginBlocState({required final LoginResponse response}) =
      _$LoginBlocStateImpl;

  @override
  LoginResponse get response;
  @override
  @JsonKey(ignore: true)
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
