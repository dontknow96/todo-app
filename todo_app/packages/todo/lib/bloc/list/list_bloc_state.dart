import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/model/comment_model.dart';
import 'package:todo/model/item_model.dart';

import '../../model/list_model.dart';

part 'list_bloc_state.freezed.dart';

enum ListState { none, loading}

@freezed
class ListBlocState with _$ListBlocState {
  const factory ListBlocState({
    required ListState state,
    required ListModel list,
    required Map<int, (ItemModel item, Map<int, CommentModel> comments)> items,
  }) = _ListBlocState;
}
