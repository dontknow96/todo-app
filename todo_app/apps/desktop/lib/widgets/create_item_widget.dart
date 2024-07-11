import 'package:flutter/material.dart';
import 'package:todo/bloc/list/list_bloc.dart';
import 'package:todo/bloc/list/list_bloc_event.dart';

class CreateItemWidget extends StatelessWidget {
  const CreateItemWidget({super.key, required this.listBloc});

  final ListBloc listBloc;

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return ExpansionTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text("create new item"),
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
        Row(
          children: [
            Expanded(child: Container()),
            MaterialButton(
              onPressed: () async => onCreateWithDueDate(
                context,
                listBloc,
                titleController.value.text,
                descriptionController.value.text,
              ),
              child: const Text("create with due date"),
            ),
            Expanded(child: Container()),
            MaterialButton(
              onPressed: () => listBloc.add(
                ListBlocEvent.createItem(
                  listBloc.state.list.id,
                  titleController.value.text,
                  descriptionController.value.text,
                  null,
                ),
              ),
              child: const Text("create without due date"),
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }

  Future<void> onCreateWithDueDate(BuildContext context, ListBloc listBloc,
      String title, String description) async {
    final date = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 9999999)));
    listBloc.add(ListBlocEvent.createItem(
      listBloc.state.list.id,
      title,
      description,
      date,
    ));
  }
}
