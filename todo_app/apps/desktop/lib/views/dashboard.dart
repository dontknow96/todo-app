import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_state.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/repository/list_repository.dart';

import '../widgets/list_element.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
    required this.goToList,
  });

  final void Function(int id) goToList;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListOverviewBloc(
          const ListOverviewBlocState(lists: <ListModel>[]),
          GetIt.I.get<ListRepository>()),
      child: Scaffold(
        appBar: AppBar(title: Text("dashboard"),),
        body: BlocBuilder<ListOverviewBloc, ListOverviewBlocState>(
          builder: (BuildContext context, ListOverviewBlocState state) {
            return ListView(
              children: [
                for (final list in state.lists)
                  ListElement(
                    list: list,
                    goToList: goToList,
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
