import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/bloc/register_bloc_event.dart';
import 'package:user/bloc/register_bloc_state.dart';
import 'package:user/repository/user_repository.dart';

class RegisterBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBloc(super.initialState, this.userRepository) {
    on<Register>(_register);
  }

  final UserRepository userRepository;

  Future<void> _register(
      Register event, Emitter<RegisterBlocState> emit) async {
    emit(state.copyWith(
        response:
            await userRepository.register(event.username, event.password)));
  }
}
