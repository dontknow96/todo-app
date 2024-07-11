import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:helper/helper.dart';
import 'package:todo/model/list_model.dart';
import 'package:user/storage_constants.dart';
import 'package:http/http.dart' as http;

import '../api_constants.dart';
import '../model/comment_model.dart';
import '../model/item_model.dart';
import 'list_repository.dart';

class ListRepositoryRest implements ListRepository {
  ListRepositoryRest(this.endpoint);

  final String endpoint;
  final storage = const FlutterSecureStorage();

  @override
  Future<(Iterable<ListModel>, ApiResponse)> getAllLists() async {
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
          Map<int, (ItemModel item, Map<int, CommentModel> comments)> items
        )? list,
        ApiResponse response
      )> getList(int id) async {
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
        <int, (ItemModel item, Map<int, CommentModel> comments)>{}
      );

      final items = bodyObject["items"];
      if (items == null) {
        return (list, ApiResponse.success);
      }

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

      return (list, ApiResponse.success);
    }

    return (null, ApiResponse.unknownError);
  }

  @override
  Future<ApiResponse> deleteComment(int commentId) async {
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
              due: (due ?? Helper.DateTimeNullReplacement).toUtc(),
              done: Helper.DateTimeNullReplacement.toUtc())
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
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
    final token = await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

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
          due: (due ?? Helper.DateTimeNullReplacement).toUtc(),
          done: (done ?? Helper.DateTimeNullReplacement).toUtc(),
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
