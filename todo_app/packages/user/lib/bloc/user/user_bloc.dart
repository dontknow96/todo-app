import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/bloc/user/user_bloc_event.dart';
import 'package:user/bloc/user/user_bloc_state.dart';

import '../../repository/user_repository.dart';

class UserBloc extends Bloc<UserBlocEvent, UserBlocState>{
  UserBloc(super.initialState, this.userRepository) {
    on<Logout>(_logout);
    on<Refresh>(_refresh);

    add(const UserBlocEvent.refresh());
  }
  final UserRepository userRepository;


  Future<void> _refresh(Refresh event, Emitter<UserBlocState> emit) async {
    if(! await userRepository.isLoggedIn()){
      emit(state.copyWith(loggedIn: false));
    }
  }

  Future<void> _logout(Logout event, Emitter<UserBlocState> emit) async {

    emit(state.copyWith());
  }

}