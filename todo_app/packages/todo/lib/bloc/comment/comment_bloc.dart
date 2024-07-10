import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/comment/comment_bloc_event.dart';
import 'package:todo/bloc/comment/comment_bloc_state.dart';

import '../../repository/list_repository.dart';

class CommentBloc extends Bloc<CommentBlocEvent, CommentBlocState> {
  CommentBloc(super.initialState, this.listRepository) {
    on<Delete>(_delete);
  }

  final ListRepository listRepository;

  Future<void> _delete(Delete event, Emitter<CommentBlocState> emit) async {}
}
