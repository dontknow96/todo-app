import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/list/list_bloc_event.dart';
import 'package:todo/todo.dart';

class CreatePermissionWidget extends StatelessWidget {
  const CreatePermissionWidget({super.key, required this.listId});

  final int listId;

  @override
  Widget build(BuildContext context) {
    final listBloc = context.read<ListBloc>();

    final usernameController = TextEditingController();

    return ExpansionTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text("create new permission"),
      children: <Widget>[
        TextField(
          controller: usernameController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'username',
          ),
        ),
        MaterialButton(
          onPressed: () async => listBloc.add(ListBlocEvent.createPermission(
            listId,
            usernameController.value.text,
          )),
          child: const Text("create Permission"),
        ),
      ],
    );
  }
}
