import 'dart:convert';

import 'package:helper/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/model/list_model.dart';
import 'package:todo/model/permission_model.dart';
import 'package:user/storage_constants.dart';
import 'package:http/http.dart' as http;

import '../api_constants.dart';
import '../model/comment_model.dart';
import '../model/item_model.dart';
import 'list_repository.dart';

class ListRepositoryRest implements ListRepository {
  ListRepositoryRest(this.endpoint);

  final String endpoint;

  @override
  Future<(Iterable<ListModel>, ApiResponse)> getAllLists() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.get(
      Uri.http(endpoint, ApiConstants.allLists),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
    );

    if (response.statusCode == 400) {
      return (<ListModel>[], ApiResponse.unauthorized);
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      var retVal = <ListModel>[];

      for (final list in body) {
        retVal.add(ListModel.fromJson(list));
      }

      return (retVal, ApiResponse.success);
    }

    return (<ListModel>[], ApiResponse.unknownError);
  }

  @override
  Future<ApiResponse> deleteList(int id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.delete(
      Uri.http(endpoint, "${ApiConstants.deleteList}$id"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> editList(int id, String title, String description) {
    // TODO: implement editList
    throw UnimplementedError();
  }

  @override
  Future<
      (
        (
          ListModel list,
          Map<int, (ItemModel item, Map<int, CommentModel> comments)> items,
          Map<int, PermissionModel> permissions
        )? list,
        ApiResponse response
      )> getList(int id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.get(
      Uri.http(endpoint, "${ApiConstants.getList}$id"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
    );

    if (response.statusCode == 400) {
      return (null, ApiResponse.unauthorized);
    }
    if (response.statusCode == 200) {
      final bodyObject = jsonDecode(response.body);
      final list = (
        ListModel.fromJson(bodyObject["data"]),
        <int, (ItemModel item, Map<int, CommentModel> comments)>{},
        <int, PermissionModel>{}
      );

      final items = bodyObject["items"] ?? [];
      final permissions = bodyObject["permissions"] ?? [];

      //add items to return
      for (final itemObject in items) {
        final item =
            (ItemModel.fromJson(itemObject["itemdata"]), <int, CommentModel>{});
        list.$2[item.$1.id] = item;

        final comments = itemObject["comments"];
        if (comments == null) {
          continue;
        }

        for (final comment in comments) {
          final commentModel = CommentModel.fromJson(comment);
          item.$2[commentModel.id] = commentModel;
        }
      }

      //add permissions to return
      for (final permission in permissions) {
        final permissionModel = PermissionModel.fromJson(permission);
        list.$3[permissionModel.userid] = permissionModel;
      }

      return (list, ApiResponse.success);
    }

    return (null, ApiResponse.unknownError);
  }

  @override
  Future<ApiResponse> deleteComment(int commentId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.delete(
      Uri.http(endpoint, "${ApiConstants.deleteComment}$commentId"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> insertComment(int itemId, String text) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.post(
      Uri.http(endpoint, ApiConstants.createComment),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
      body: jsonEncode(CommentModel(
        id: 0,
        itemid: itemId,
        authorid: 0,
        author: "",
        text: text,
        time: DateTime.now(),
      ).toJson()),
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> deleteItem(int itemId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.delete(
      Uri.http(endpoint, "${ApiConstants.deleteItem}$itemId"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> insertItem(
      int listId, String title, String description, DateTime? due) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.post(
      Uri.http(endpoint, ApiConstants.createItem),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
      body: jsonEncode(ItemModel(
              id: 0,
              listid: listId,
              title: title,
              description: description,
              due: (due ?? Helper.dateTimeNullReplacement).toUtc(),
              done: Helper.dateTimeNullReplacement.toUtc())
          .toJson()),
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> insertList(String title, String description) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.post(
      Uri.http(endpoint, ApiConstants.createList),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
      body: jsonEncode(
        ListModel(
          id: 0,
          ownerid: 0,
          ownerusername: '',
          title: title,
          description: description,
        ),
      ),
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> editItem(int itemid, String title, String description,
      DateTime? due, DateTime? done) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.post(
      Uri.http(endpoint, '${ApiConstants.editItem}$itemid'),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
      body: jsonEncode(
        ItemModel(
          id: itemid,
          listid: 0,
          title: title,
          description: description,
          due: (due ?? Helper.dateTimeNullReplacement).toUtc(),
          done: (done ?? Helper.dateTimeNullReplacement).toUtc(),
        ),
      ),
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> deletePermission(int listId, String username) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.delete(
      Uri.http(endpoint, ApiConstants.deletePermission),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
      body: jsonEncode(
        PermissionModel(
          listid: listId,
          username: username,
          userid: 0,
        ),
      ),
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }

  @override
  Future<ApiResponse> insertPermission(int listId, String username) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString( StorageConstants.jwtStorageKey) ?? "";

    final response = await http.post(
      Uri.http(endpoint, ApiConstants.createPermission),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
      body: jsonEncode(
        PermissionModel(
          listid: listId,
          username: username,
          userid: 0,
        ),
      ),
    );

    if (response.statusCode == 400) {
      return ApiResponse.unauthorized;
    }
    if (response.statusCode == 200) {
      return ApiResponse.success;
    }

    return ApiResponse.unknownError;
  }
}
