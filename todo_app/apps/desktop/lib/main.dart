import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/repository/list_repository.dart';
import 'package:todo/repository/list_repository_rest.dart';
import 'package:user/api_constants.dart';
import 'package:user/user.dart';

import 'app/app.dart';

Future<void> bootstrap()async {
  GetIt.I.registerSingleton<UserRepository>(UserRepositoryRest(ApiConstants.baseUrl));
  GetIt.I.registerSingleton<ListRepository>(ListRepositoryRest(ApiConstants.baseUrl));
}

void main() {
  bootstrap();
  runApp(const TodoDesktopApp());
}
