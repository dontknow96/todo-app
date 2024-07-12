import 'package:todo/model/comment_model.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/model/permission_model.dart';

import '../model/item_model.dart';

enum ApiResponse { none, success, unauthorized, unknownError }

abstract class ListRepository {
  //list endpoints
  Future<(Iterable<ListModel>, ApiResponse)> getAllLists();

  Future<
      (
        (
          ListModel list,
        Map<int, (ItemModel item, Map<int, CommentModel> comments)> items,
  Map<int, PermissionModel> permissions
        )? list,
        ApiResponse response
      )> getList(int id);

  Future<ApiResponse> deleteList(int id);

  Future<ApiResponse> insertList(
    String title,
    String description,
  );

  Future<ApiResponse> editList(
    int id,
    String title,
    String description,
  );

  //item endpoints
  Future<ApiResponse> insertItem(
      int listId, String title, String description, DateTime? due);

  Future<ApiResponse> editItem(
    int itemid,
    String title,
    String description,
    DateTime? due,
    DateTime? done,
  );

  Future<ApiResponse> deleteItem(int itemId);

  //comment endpoints
  Future<ApiResponse> insertComment(int itemId, String text);

  Future<ApiResponse> deleteComment(int commentId);

  //permission endpoints
  Future<ApiResponse> insertPermission(int listId, String username);

  Future<ApiResponse> deletePermission(int listId, String username);
}
