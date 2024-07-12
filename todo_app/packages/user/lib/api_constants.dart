class ApiConstants {
  static String baseUrl = const String.fromEnvironment('USER_API_URL',
      defaultValue: '127.0.0.1:8080'); //default is emulator localhost relay
  static const login = 'user/login';
  static const register = 'user/register';
}
