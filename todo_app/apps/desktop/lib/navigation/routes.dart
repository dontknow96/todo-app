import 'package:desktop/views/dashboard.dart';
import 'package:desktop/views/list.dart';
import 'package:desktop/views/register.dart';
import 'package:go_router/go_router.dart';

import '../views/login.dart';

class TodoRouterConfigDesktop {
  static const login = '/login';
  static const register = '/register';
  static const home = '/';
  static const dashboard = '/dashboard';
  static const list = '/list/:id';
  static const listUnparametered = '/list/';

  static List<RouteBase> routes() => [
        GoRoute(
          path: dashboard,
          builder: (context, __) => DashboardView(goToList: (id) => GoRouter.of(context).go('$listUnparametered${id.toString()}')),
        ),
        GoRoute(
          path: list,
          builder: (context, state) =>
              TodoListView(listId: int.tryParse(state.pathParameters['id']!)!),
        ),
        GoRoute(
          path: home,
          builder: (context, __) => LoginView(
            goToRegistration: () => GoRouter.of(context).go(register),
            whenFinished: () => GoRouter.of(context).go(dashboard),
          ),
          // builder: (context, __) => Dashboard(goToList: (id) {}),
        ),
        GoRoute(
          path: login,
          builder: (context, __) => LoginView(
            goToRegistration: () => GoRouter.of(context).go(register),
            whenFinished: () => GoRouter.of(context).go(dashboard),
          ),
        ),
        GoRoute(
          path: register,
          builder: (context, __) => RegisterView(
            goToLogin: () => GoRouter.of(context).go(login),
            whenFinished: () => GoRouter.of(context).go(dashboard),
          ),
        ),
      ];

  static GoRouter createRouter() => GoRouter(
        routes: routes(),
      );
}
