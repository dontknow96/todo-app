import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc_event.freezed.dart';

@freezed
class UserBlocEvent with _$UserBlocEvent{
  const factory UserBlocEvent.logout() = Logout;
  const factory UserBlocEvent.refresh() = Refresh;
}
