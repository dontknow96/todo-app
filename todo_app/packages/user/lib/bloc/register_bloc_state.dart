import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user/user.dart';

part 'register_bloc_state.freezed.dart';

@freezed
class RegisterBlocState with _$RegisterBlocState {
  const factory RegisterBlocState({
    required RegisterResponse response,
  }) = _RegisterBlocState;
}
