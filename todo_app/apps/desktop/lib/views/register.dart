import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:user/bloc/register/register_bloc_event.dart';
import 'package:user/bloc/register/register_bloc_state.dart';
import 'package:user/user.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({
    super.key,
    required this.goToLogin,
    required this.whenFinished,
  });

  final void Function() goToLogin;
  final void Function() whenFinished;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocProvider(
      create: (_) => RegisterBloc(
          const RegisterBlocState(response: RegisterResponse.none),
          GetIt.I.get<UserRepository>()),
      child: Scaffold(body: BlocBuilder<RegisterBloc, RegisterBlocState>(
        builder: (BuildContext context, RegisterBlocState state) {
          if (state.response == RegisterResponse.success) {
            Future.delayed(Duration.zero, whenFinished);
          }

          final registerBloc = context.read<RegisterBloc>();

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
                    onPressed: () => registerBloc.add(
                      RegisterBlocEvent.register(
                        usernameController.value.text,
                        passwordController.value.text,
                      ),
                    ),
                    child: const Text("register"),
                  ),
                  MaterialButton(
                    onPressed: goToLogin,
                    child: const Text("zurück"),
                  )
                ],
              )
            ],
          );
        },
      )),
    );
  }
}
