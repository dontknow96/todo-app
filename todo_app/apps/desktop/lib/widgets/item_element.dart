import 'package:desktop/widgets/comment_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/bloc/item/item_bloc.dart';
import 'package:todo/bloc/item/item_bloc_state.dart';
import 'package:todo/model/comment_model.dart';
import 'package:todo/model/item_model.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/repository/list_repository.dart';

class ItemElement extends StatelessWidget {
  const ItemElement({
    super.key,
    required this.item,
    required this.comments,
  });

  final ItemModel item;
  final Iterable<CommentModel> comments;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ItemBloc(
        ItemBlocState(state: ItemState.none, item: item, comments: comments),
        GetIt.I.get<ListRepository>(),
      ),
      child: BlocBuilder<ItemBloc, ItemBlocState>(
        builder: (BuildContext context, state) {
          final itemBloc = context.read<ItemBloc>();

          return ExpansionTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Row(
              children: [
                Checkbox(value: false, onChanged: null),
                Expanded(child: Container()),
                Text(state.item.title),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: null,
                  child: const Icon(
                    Icons.delete_forever,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            children: <Widget>[
              Text(state.item.description),
              for (final comment in state.comments)
                CommentElement(
                  comment: comment,
                )
            ],
          );
        },
      ),
    );
  }
}
