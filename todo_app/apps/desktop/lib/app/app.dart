import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:user/bloc/user/user_bloc.dart';
import 'package:user/bloc/user/user_bloc_state.dart';
import 'package:user/repository/user_repository.dart';

import '../navigation/routes.dart';

class TodoDesktopApp extends StatelessWidget {
  const TodoDesktopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc(const UserBlocState(username: '', loggedIn: false), GetIt.I.get<UserRepository>())),
      ],
      child: MaterialApp.router(
        routerConfig: TodoRouterConfigDesktop.createRouter(),
      ),
    );
  }
}
