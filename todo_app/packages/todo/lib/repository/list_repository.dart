import 'package:todo/model/list_model.dart';

enum GetListResponse{ none, success, unauthorized, unknownError}

abstract class ListRepository{
  Future<(Iterable<ListModel>, GetListResponse)> getAllLists();
}