import 'package:desktop/widgets/comment_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helper/helper.dart';
import 'package:todo/bloc/list/list_bloc_event.dart';
import 'package:todo/bloc/list/list_bloc_state.dart';
import 'package:todo/model/item_model.dart';
import 'package:todo/todo.dart';

class ItemElement extends StatelessWidget {
  const ItemElement({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    final commentTextController = TextEditingController();

    return BlocBuilder<ListBloc, ListBlocState>(
      builder: (BuildContext context, state) {
        final listBloc = BlocProvider.of<ListBloc>(context);

        final isDone =
            !item.done.isAtSameMomentAs(Helper.DateTimeNullReplacement);
        final hasDue =
            !item.due.isAtSameMomentAs(Helper.DateTimeNullReplacement);

        return ExpansionTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Row(
            children: [
              Checkbox(
                value: isDone,
                onChanged: (_) => listBloc.add(
                  ListBlocEvent.editItem(
                    item.id,
                    item.title,
                    item.description,
                    item.due,
                    isDone ? Helper.DateTimeNullReplacement : DateTime.now(),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Text(item.title),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () => listBloc.add(ListBlocEvent.deleteItem(item.id)),
                child: const Icon(
                  Icons.delete_forever,
                  size: 24.0,
                ),
              ),
            ],
          ),
          children: <Widget>[
            if (hasDue) Text("Due: ${item.due}"),
            if (isDone) Text("Done: ${item.done}"),
            Text(item.description),
            for (final comment in state.items[item.id]!.$2.entries)
              CommentElement(comment: comment.value),
            Row(children: [
              Expanded(
                child: TextField(
                  controller: commentTextController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'add comment',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => listBloc.add(ListBlocEvent.createComment(
                  item.id,
                  commentTextController.value.text,
                )),
                child: const Icon(
                  Icons.send,
                  size: 24.0,
                ),
              ),
            ]),
          ],
        );
      },
    );
  }
}
