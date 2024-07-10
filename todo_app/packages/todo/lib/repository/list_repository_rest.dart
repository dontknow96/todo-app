import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  Future<ApiResponse> deleteList(int id) {
    // TODO: implement deleteList
    throw UnimplementedError();
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
        final item = (
          ItemModel.fromJson(itemObject["itemdata"]),
          <int, CommentModel>{}
        );
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
  Future<ApiResponse> deleteComment(int commentId) {
    // TODO: implement insertComment
    throw UnimplementedError();

  }

  @override
  Future<ApiResponse> insertComment(int itemId, String text) {
    // TODO: implement insertComment
    throw UnimplementedError();
  }
}
