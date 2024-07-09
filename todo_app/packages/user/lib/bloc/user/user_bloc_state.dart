import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc_state.freezed.dart';

@freezed
class UserBlocState with _$UserBlocState {
  const factory UserBlocState({
    required String username,
    required bool loggedIn,
  }) = _UserBlocState;
}
