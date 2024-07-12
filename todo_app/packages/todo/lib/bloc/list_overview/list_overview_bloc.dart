import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_event.dart';
import 'package:todo/bloc/list_overview/list_overview_bloc_state.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/repository/list_repository.dart';

class ListOverviewBloc
    extends Bloc<ListOverviewBlocEvent, ListOverviewBlocState> {
  ListOverviewBloc(super.initialState, this.listRepository) {
    on<Refresh>(_refresh);
    on<SelectCategory>(_slectCategory);

    on<CreateList>(_createList);

    add(const ListOverviewBlocEvent.refresh());
  }

  final ListRepository listRepository;

  Future<void> _refresh(
      Refresh event, Emitter<ListOverviewBlocState> emit) async {
    emit(state.copyWith(state: ListOverviewState.loading));
    final allLists = (await listRepository.getAllLists()).$1;

    final categorys = <String>[];

    for (var list in allLists) {
      if (!categorys.contains(list.category)) {
        categorys.add(list.category);
      }
    }

    emit(state.copyWith(
        categorys: categorys,
        slectedCategory: "",
        lists: allLists,
        visibleLists: allLists,
        state: ListOverviewState.none));
  }

  Future<void> _createList(
      CreateList event, Emitter<ListOverviewBlocState> emit) async {
    emit(state.copyWith(state: ListOverviewState.loading));
    final response = await listRepository.insertList(
        event.title, event.description, event.category);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListOverviewState.none));
      add(const ListOverviewBlocEvent.refresh());
      return;
    }
    emit(state.copyWith(state: ListOverviewState.none));
  }

  Future<void> _slectCategory(
      SelectCategory event, Emitter<ListOverviewBlocState> emit) async {
    if (event.category == "") {
      emit(state.copyWith(
          visibleLists: state.lists, slectedCategory: event.category));
      return;
    }

    final visible = <ListModel>[];

    for (var list in state.lists) {
      if (list.category == event.category) {
        visible.add(list);
      }
    }
    emit(
        state.copyWith(visibleLists: visible, slectedCategory: event.category));
  }
}
