import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/repository/list_repository.dart';

import 'list_bloc_event.dart';
import 'list_bloc_state.dart';

class ListBloc extends Bloc<ListBlocEvent, ListBlocState> {
  ListBloc(super.initialState, this.listRepository) {
    on<Refresh>(_refresh);
    on<Delete>(_delete);
    on<Edit>(_edit);

    add(const ListBlocEvent.refresh());
  }

  final ListRepository listRepository;

  Future<void> _refresh(Refresh event, Emitter<ListBlocState> emit) async {
    final response = await listRepository.getList(state.list.id);
    if (response.$2 == GetListResponse.success) {
      emit(state.copyWith(list: response.$1!.$1, items: response.$1!.$2));
    }
  }

  Future<void> _delete(Delete event, Emitter<ListBlocState> emit) async {}

  Future<void> _edit(Edit event, Emitter<ListBlocState> emit) async {}
}
