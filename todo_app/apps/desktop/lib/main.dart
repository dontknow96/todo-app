import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:user/api_constants.dart';
import 'package:user/user.dart';

import 'app/app.dart';

Future<void> bootstrap()async {
  GetIt.I.registerSingleton<UserRepository>(UserRepositoryRest(ApiConstants.baseUrl));
}

void main() {
  bootstrap();
  runApp(const TodoDesktopApp());
}
