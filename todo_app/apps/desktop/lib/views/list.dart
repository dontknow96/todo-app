import 'package:desktop/widgets/item_element.dart';
import 'package:desktop/widgets/permissions_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/bloc/list/list_bloc.dart';
import 'package:todo/bloc/list/list_bloc_event.dart';
import 'package:todo/bloc/list/list_bloc_state.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/repository/list_repository.dart';
import 'package:user/bloc/user/user_bloc.dart';

import '../widgets/create_item_widget.dart';
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
                description: "",
                category: ''),
            items: {},
            permissions: {},
          ),
          GetIt.I.get<ListRepository>()),
      child: BlocBuilder<ListBloc, ListBlocState>(
        builder: (BuildContext context, ListBlocState state) {
          final listBloc = context.read<ListBloc>();
          final userBloc = context.read<UserBloc>();

          final isOwner = userBloc.state.username == state.list.ownerusername;

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
                    onIconClick: isOwner
                        ? () => listBloc
                            .add(ListBlocEvent.deleteList(state.list.id))
                        : null,
                    iconData: isOwner ? Icons.delete_forever : null,
                    additionalContent: [
                      if (isOwner)
                        PermissionsElement(
                          listId: listId,
                          permissions: state.permissions.values,
                        )
                    ],
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
