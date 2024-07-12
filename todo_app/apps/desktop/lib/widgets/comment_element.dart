import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/list/list_bloc.dart';
import 'package:todo/bloc/list/list_bloc_event.dart';
import 'package:todo/bloc/list/list_bloc_state.dart';
import 'package:todo/model/comment_model.dart';
import 'package:user/bloc/user/user_bloc.dart';

class CommentElement extends StatelessWidget {
  const CommentElement({
    super.key,
    required this.comment,
  });

  final CommentModel comment;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBloc, ListBlocState>(
      builder: (BuildContext context, state) {
        final listBloc = context.read<ListBloc>();
        final userBloc = context.read<UserBloc>();

        final isAuthor = userBloc.state.username == comment.author;

        return Column(
          children: [
            Row(
              children: [
                Text(comment.author),
                Expanded(child: Container()),
                Text(comment.time.toString()),
                if(isAuthor)
                Expanded(child: Container()),
                if(isAuthor)
                GestureDetector(
                  onTap: () => listBloc.add(ListBlocEvent.deleteComment(comment.id)),
                  child: const Icon(
                    Icons.delete_forever,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            Text(comment.text),
          ],
        );
      },
    );
  }
}
