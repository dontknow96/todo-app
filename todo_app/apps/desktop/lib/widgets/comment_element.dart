import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/bloc/comment/comment_bloc.dart';
import 'package:todo/bloc/comment/comment_bloc_state.dart';
import 'package:todo/model/comment_model.dart';
import 'package:todo/repository/list_repository.dart';

class CommentElement extends StatelessWidget {
  const CommentElement({
    super.key,
    required this.comment,
  });

  final CommentModel comment;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CommentBloc(
        CommentBlocState(state: CommentState.none, comment: comment),
        GetIt.I.get<ListRepository>(),
      ),
      child: BlocBuilder<CommentBloc, CommentBlocState>(
        builder: (BuildContext context, state) {
          // final itemBloc = context.read<CommentBloc>();

          return Column(
            children: [
              Row(
                children: [
                  Text(state.comment.author),
                  Expanded(child: Container()),
                  Text(state.comment.time.toString()),
                  Expanded(child: Container()),
                  const Text("delete"),
                ],
              ),
              Text(state.comment.text),
            ],
          );
        },
      ),
    );
  }
}
