import 'package:todo/model/comment_model.dart';
import 'package:todo/model/list_model.dart';

import '../model/item_model.dart';

enum ApiResponse { none, success, unauthorized, unknownError }

abstract class ListRepository {

  //list endpoints
  Future<(Iterable<ListModel>, ApiResponse)> getAllLists();
  Future<((ListModel list,Map<int, (ItemModel item, Map<int, CommentModel> comments)> items)? list, ApiResponse response)> getList(int id);
  Future<ApiResponse> deleteList(int id);
  Future<ApiResponse> editList(
    int id,
    String title,
    String description,
  );

  //item endpoints

  //comment endpoints
  Future<ApiResponse> insertComment(int itemId, String text);
  Future<ApiResponse> deleteComment(int commentId);
}
