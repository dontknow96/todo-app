import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc_event.freezed.dart';

@freezed
class LoginBlocEvent with _$LoginBlocEvent{
  const factory LoginBlocEvent.login(String username, String password) = Login;
}
