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
              lists: <ListModel>[], state: ListOverviewState.none),
          GetIt.I.get<ListRepository>()),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text("dashboard"),
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
        body: BlocBuilder<ListOverviewBloc, ListOverviewBlocState>(
          builder: (BuildContext context, ListOverviewBlocState state) {
            final listOverviewBloc = context.read<ListOverviewBloc>();

            return RefreshIndicator(
              onRefresh: () async =>
                  listOverviewBloc.add(const ListOverviewBlocEvent.refresh()),
              child: ListView(
                children: [
                  for (final list in state.lists)
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
            );
          },
        ),
      ),
    );
  }
}
