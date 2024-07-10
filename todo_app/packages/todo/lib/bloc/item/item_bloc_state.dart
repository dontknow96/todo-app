import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/model/comment_model.dart';
import 'package:todo/model/item_model.dart';

part 'item_bloc_state.freezed.dart';

enum ItemState { none, loading}

@freezed
class ItemBlocState with _$ItemBlocState {
  const factory ItemBlocState({
    required ItemState state,
    required ItemModel item,
    required Iterable<CommentModel> comments,
  }) = _ItemBlocState;
}
