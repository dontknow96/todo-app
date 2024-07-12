import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/repository/user_repository.dart';
import 'login_bloc_event.dart';
import 'login_bloc_state.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBloc(super.initialState, this.userRepository) {
    on<Login>(_login);
  }

  final UserRepository userRepository;

  Future<void> _login(Login event, Emitter<LoginBlocState> emit) async {
    final result = await userRepository.login(event.username, event.password);
    emit(state.copyWith(response: result));
  }
}
