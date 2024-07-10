import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/repository/list_repository.dart';

import 'list_bloc_event.dart';
import 'list_bloc_state.dart';

class ListBloc extends Bloc<ListBlocEvent, ListBlocState> {
  ListBloc(super.initialState, this.listRepository) {
    on<Refresh>(_refresh);

    //List changing events
    on<DeleteList>(_deleteList);
    on<EditList>(_editList);


    //item changing events
    on<DeleteItem>(_deleteItem);
    on<EditItem>(_editItem);

    //comment changing events
    on<DeleteComment>(_deleteComment);

    add(const ListBlocEvent.refresh());
  }
  final ListRepository listRepository;

  Future<void> _refresh(Refresh event, Emitter<ListBlocState> emit) async {
    final response = await listRepository.getList(state.list.id);
    if (response.$2 == ApiResponse.success) {
      emit(state.copyWith(list: response.$1!.$1, items: response.$1!.$2));
    }
  }

  Future<void> _deleteList(DeleteList event, Emitter<ListBlocState> emit) async {}

  Future<void> _editList(EditList event, Emitter<ListBlocState> emit) async {}

  Future<void> _deleteItem(DeleteItem event, Emitter<ListBlocState> emit) async {}

  Future<void> _editItem(EditItem event, Emitter<ListBlocState> emit) async {}

  Future<void> _deleteComment(DeleteComment event, Emitter<ListBlocState> emit) async {}
}