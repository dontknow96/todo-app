

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/item/item_bloc_event.dart';
import 'package:todo/bloc/item/item_bloc_state.dart';

import '../../repository/list_repository.dart';

class ItemBloc extends Bloc<ItemBlocEvent, ItemBlocState> {
  ItemBloc(super.initialState, this.listRepository) {
    on<Delete>(_delete);
    on<Edit>(_edit);
  }

  final ListRepository listRepository;

  Future<void> _delete(Delete event, Emitter<ItemBlocState> emit) async {}
  Future<void> _edit(Edit event, Emitter<ItemBlocState> emit) async {}
}
