import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user/repository/user_repository.dart';

part 'login_bloc_state.freezed.dart';

@freezed
class LoginBlocState with _$LoginBlocState {
  const factory LoginBlocState({
    required LoginResponse response,
  }) = _LoginBlocState;
}
