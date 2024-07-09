import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:todo/model/list_model.dart';
import 'package:user/storage_constants.dart';
import 'package:http/http.dart' as http;

import '../api_constants.dart';
import 'list_repository.dart';

class ListRepositoryRest implements ListRepository {
  ListRepositoryRest(this.endpoint);

  final String endpoint;
  final storage = const FlutterSecureStorage();

  @override
  Future<(Iterable<ListModel>, GetListResponse)> getAllLists() async {
    final token =
        await storage.read(key: StorageConstants.jwtStorageKey) ?? "";

    final response = await http.get(
      Uri.http(endpoint, ApiConstants.allLists),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer $token",
      },
    );

    if (response.statusCode == 400) {
      return (<ListModel>[], GetListResponse.unauthorized);
    }
    if (response.statusCode == 200) {
      
      final body = jsonDecode(response.body);
      var retVal = <ListModel>[];
      
      for(final list in body){
        retVal.add(ListModel.fromJson(list));
      }

      return (retVal, GetListResponse.success);
    }

    return (<ListModel>[], GetListResponse.unknownError);
  }
}
