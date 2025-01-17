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
    on<CreateItem>(_createItem);
    on<DeleteItem>(_deleteItem);
    on<EditItem>(_editItem);

    //comment changing events
    on<CreateComment>(_createComment);
    on<DeleteComment>(_deleteComment);

    //permission changing events
    on<CreatePermission>(_createPermission);
    on<DeletePermission>(_deletePermission);

    add(const ListBlocEvent.refresh());
  }

  final ListRepository listRepository;

  Future<void> _refresh(Refresh event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));
    final response = await listRepository.getList(state.list.id);
    if (response.$2 == ApiResponse.success) {
      emit(state.copyWith(
          list: response.$1!.$1,
          items: response.$1!.$2,
          permissions: response.$1!.$3,
          state: ListState.none));
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _editList(EditList event, Emitter<ListBlocState> emit) async {}

  Future<void> _deleteList(
      DeleteList event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));
    final response = await listRepository.deleteList(event.id);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListState.deleted));
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _createItem(
      CreateItem event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));
    final response = await listRepository.insertItem(
        event.listId, event.title, event.description, event.due);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListState.none));
      add(const ListBlocEvent.refresh());
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _deleteItem(
      DeleteItem event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));
    final response = await listRepository.deleteItem(event.id);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListState.none));
      add(const ListBlocEvent.refresh());
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _editItem(EditItem event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));
    final response = await listRepository.editItem(
        event.id, event.title, event.description, event.due, event.done);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListState.none));
      add(const ListBlocEvent.refresh());
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _createComment(
      CreateComment event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));
    final response =
    await listRepository.insertComment(event.itemId, event.text);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListState.none));
      add(const ListBlocEvent.refresh());
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _deleteComment(
      DeleteComment event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));

    final response = await listRepository.deleteComment(event.id);

    if (response == ApiResponse.success) {
      final newState = state.copyWith(state: ListState.none);

      for (var entry in newState.items.entries) {
        entry.value.$2.remove(event.id);
      }

      emit(newState);
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _createPermission(
      CreatePermission event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));
    final response =
    await listRepository.insertPermission(event.listId, event.username);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListState.none));
      add(const ListBlocEvent.refresh());
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }

  Future<void> _deletePermission(
      DeletePermission event, Emitter<ListBlocState> emit) async {
    emit(state.copyWith(state: ListState.loading));

    final response = await listRepository.deletePermission(event.listId, event.username);

    if (response == ApiResponse.success) {
      emit(state.copyWith(state: ListState.none));
      add(const ListBlocEvent.refresh());
      return;
    }
    emit(state.copyWith(state: ListState.none));
  }
}
