import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:user/bloc/login/login_bloc_event.dart';
import 'package:user/bloc/login/login_bloc_state.dart';
import 'package:user/user.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
    required this.goToRegistration,
    required this.whenFinished,
  });

  final void Function() goToRegistration;
  final void Function() whenFinished;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocProvider(
      create: (_) => LoginBloc(
          const LoginBlocState(response: LoginResponse.none),
          GetIt.I.get<UserRepository>()),
      child: Scaffold(body: BlocBuilder<LoginBloc, LoginBlocState>(
        builder: (BuildContext context, LoginBlocState state) {
          if (state.response == LoginResponse.success) {
            Future.delayed(Duration.zero, whenFinished);
          }

          final loginBloc = context.read<LoginBloc>();

          return Column(
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'username',
                ),
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () => loginBloc.add(
                      LoginBlocEvent.login(
                        usernameController.value.text,
                        passwordController.value.text,
                      ),
                    ),
                    child: const Text("login"),
                  ),
                  MaterialButton(
                    onPressed: goToRegistration,
                    child: const Text("register"),
                  ),
                ],
              ),
            ],
          );
        },
      )),
    );
  }
}
