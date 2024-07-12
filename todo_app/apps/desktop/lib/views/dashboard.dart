import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_event.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_state.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/repository/list_repository.dart';
import 'package:user/bloc/user/user_bloc.dart';
import 'package:user/bloc/user/user_bloc_event.dart';

import '../widgets/create_list_widget.dart';
import '../widgets/list_element.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({
    super.key,
    required this.goToList,
    required this.onLogout,
  });

  final void Function(int id) goToList;
  final void Function() onLogout;

  @override
  Widget build(BuildContext context) {
    final userBloc = context.read<UserBloc>();

    return BlocProvider(
      create: (_) => ListOverviewBloc(
          const ListOverviewBlocState(
              lists: <ListModel>[],
              state: ListOverviewState.none,
              categorys: [],
              slectedCategory: '',
              visibleLists: []),
          GetIt.I.get<ListRepository>()),
      child: BlocBuilder<ListOverviewBloc, ListOverviewBlocState>(
        builder: (BuildContext context, ListOverviewBlocState state) {
          final listOverviewBloc = context.read<ListOverviewBloc>();

          return Scaffold(
            appBar: AppBar(
              title: Row(
                children: [
                  const Text("dashboard"),
                  Expanded(child: Container()),
                  if (state.state == ListOverviewState.loading)
                    const CircularProgressIndicator(),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      userBloc.add(const UserBlocEvent.logout());
                      Future.delayed(Duration.zero, onLogout);
                    },
                    child: const Icon(
                      Icons.logout,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () async =>
                  listOverviewBloc.add(const ListOverviewBlocEvent.refresh()),
              child: ListView(
                children: [
                  Row(
                    children: [
                      MaterialButton(
                        color:
                            state.slectedCategory == "" ? Colors.white54 : null,
                        onPressed: () => listOverviewBloc.add(
                            const ListOverviewBlocEvent.selectCategory("")),
                        child: const Text("All Categorys"),
                      ),
                      for (final category in state.categorys)
                        MaterialButton(
                          color: state.slectedCategory == category
                              ? Colors.white54
                              : null,
                          onPressed: () => listOverviewBloc.add(
                              ListOverviewBlocEvent.selectCategory(category)),
                          child: Text(category),
                        ),
                    ],
                  ),
                  for (final list in state.visibleLists)
                    ListElement(
                      list: list,
                      onIconClick: () => goToList(list.id),
                      iconData: Icons.open_in_full,
                      additionalContent: const [],
                    ),
                  CreateListWidget(
                    listOverviewBloc: listOverviewBloc,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
