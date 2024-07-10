import 'package:desktop/widgets/item_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/bloc/list/list_bloc.dart';
import 'package:todo/bloc/list/list_bloc_event.dart';
import 'package:todo/bloc/list/list_bloc_state.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/repository/list_repository.dart';

import '../widgets/list_element.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({
    super.key,
    required this.onClickBack,
    required this.listId,
  });

  final void Function() onClickBack;
  final int listId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListBloc(
          ListBlocState(
            state: ListState.none,
            list: ListModel(
                id: listId,
                ownerid: -1,
                ownerusername: "",
                title: "",
                description: ""),
            items: {},
          ),
          GetIt.I.get<ListRepository>()),
      child: BlocBuilder<ListBloc, ListBlocState>(
        builder: (BuildContext context, ListBlocState state) {
          final listBloc = context.read<ListBloc>();

          if (state.state == ListState.deleted) {
            Future.delayed(Duration.zero, onClickBack);
          }

          return Scaffold(
            appBar: AppBar(
                title: Row(
              children: [
                const Text("List View"),
                Expanded(child: Container()),
                if (state.state == ListState.loading)
                  const CircularProgressIndicator(),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: onClickBack,
                  child: const Icon(
                    Icons.arrow_back,
                    size: 24.0,
                  ),
                ),
              ],
            )),
            body: RefreshIndicator(
              onRefresh: () async =>
                  listBloc.add(const ListBlocEvent.refresh()),
              child: ListView(
                children: [
                  ListElement(
                    list: state.list,
                    onIconClick: () =>
                        listBloc.add(ListBlocEvent.deleteList(state.list.id)),
                    iconData: Icons.delete_forever,
                  ),
                  for (final item in state.items.entries)
                    ItemElement(
                      item: item.value.$1,
                    ),
                  CreateItemWidget(listBloc: listBloc),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

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
              child: Text("create with due date"),
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
