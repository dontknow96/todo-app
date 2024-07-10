import 'package:todo/model/comment_model.dart';
import 'package:todo/model/list_model.dart';

import '../model/item_model.dart';

enum GetListResponse { none, success, unauthorized, unknownError }

abstract class ListRepository {
  Future<(Iterable<ListModel>, GetListResponse)> getAllLists();
  Future<((ListModel list,Iterable<(ItemModel item, Iterable<CommentModel> comments)> items)? list, GetListResponse response)> getList(int id);
  Future<GetListResponse> deleteList(int id);
  Future<GetListResponse> editList(
    int id,
    String title,
    String description,
  );
}
