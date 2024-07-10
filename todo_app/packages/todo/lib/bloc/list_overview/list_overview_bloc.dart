import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_event.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_state.dart';
import 'package:todo/repository/list_repository.dart';

class ListOverviewBloc
    extends Bloc<ListOverviewBlocEvent, ListOverviewBlocState> {
  ListOverviewBloc(super.initialState, this.listRepository) {
    on<Refresh>(_refresh);

    add(const ListOverviewBlocEvent.refresh());
  }

  final ListRepository listRepository;

  Future<void> _refresh(
      Refresh event, Emitter<ListOverviewBlocState> emit) async {
    emit(state.copyWith(lists: (await listRepository.getAllLists()).$1));
  }
}