enum LoginResponse { none, success, wrongCredentials, unknownError}
enum RegisterResponse { none, success, alreadyExists, unknownError}

abstract class UserRepository{
  Future<LoginResponse> login(String username, String password);
  Future<RegisterResponse> register(String username, String password);
  Future<void> delete(String username, String password);
  Future<void> edit(String username, String password);
  Future<void> logout();
  Future<bool> isLoggedIn();
}