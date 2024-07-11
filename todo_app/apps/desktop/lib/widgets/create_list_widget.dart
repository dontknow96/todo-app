import 'package:flutter/material.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_event.dart';
import 'package:todo/todo.dart';

class CreateListWidget extends StatelessWidget {
  const CreateListWidget({super.key, required this.listOverviewBloc});

  final ListOverviewBloc listOverviewBloc;

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return ExpansionTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text("create new List"),
      children: <Widget>[
        TextField(
          controller: titleController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'title',
          ),
        ),
        TextField(
          controller: descriptionController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'description',
          ),
        ),
        MaterialButton(
          onPressed: () async => listOverviewBloc.add(
              ListOverviewBlocEvent.createList(titleController.value.text,
                  descriptionController.value.text)),
          child: const Text("create List"),
        ),
      ],
    );
  }
}
