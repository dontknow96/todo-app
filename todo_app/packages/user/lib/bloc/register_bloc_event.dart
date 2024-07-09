import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc_event.freezed.dart';

@freezed
class RegisterBlocEvent with _$RegisterBlocEvent{
  const factory RegisterBlocEvent.register(String username, String password) = Register;
}
