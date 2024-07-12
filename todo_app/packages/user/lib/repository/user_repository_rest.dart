import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user/api_constants.dart';
import 'package:user/model/user_model.dart';
import 'package:user/repository/user_repository.dart';
import 'package:user/storage_constants.dart';

class UserRepositoryRest implements UserRepository {
  UserRepositoryRest(this.endpoint);

  final String endpoint;

  @override
  Future<void> delete(String username, String password) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> edit(String username, String password) {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  Future<LoginResponse> login(String username, String password) async {
    var model = UserModel(username: username, password: password, token: "");

    final response = await http.post(Uri.http(endpoint, ApiConstants.login),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(model.toJson()));

    if (response.statusCode == 400) {
      return LoginResponse.wrongCredentials;
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      final token = body["token"].toString();
      final expiration = DateTime.fromMillisecondsSinceEpoch(
          body["validUntil"] * 1000,
          isUtc: true);

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString(StorageConstants.usernameStorageKey, username);
      await prefs.setString(StorageConstants.jwtStorageKey, token);
      await prefs.setString(
          StorageConstants.jwtExpirationStorageKey, expiration.toString());

      return LoginResponse.success;
    }

    return LoginResponse.unknownError;
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<RegisterResponse> register(String username, String password) async {
    var model = UserModel(username: username, password: password, token: "");

    final response = await http.post(Uri.http(endpoint, ApiConstants.register),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(model.toJson()));

    if (response.statusCode == 409) {
      return RegisterResponse.alreadyExists;
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      final token = body["token"].toString();
      final expiration = DateTime.fromMillisecondsSinceEpoch(
          body["validUntil"] * 1000,
          isUtc: true);

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString(StorageConstants.usernameStorageKey, username);
      await prefs.setString(StorageConstants.jwtStorageKey, token);
      await prefs.setString(
          StorageConstants.jwtExpirationStorageKey, expiration.toString());

      return RegisterResponse.success;
    }

    return RegisterResponse.unknownError;
  }

  @override
  Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString(StorageConstants.jwtStorageKey) == null ||
        prefs.getString(StorageConstants.jwtExpirationStorageKey) == null) {
      return false;
    }

    final expiration = DateTime.parse(
        prefs.getString(StorageConstants.jwtExpirationStorageKey) ?? "");

    if (DateTime.now().isAfter(expiration)) {
      return false;
    }

    return true;
  }

  @override
  Future<String> getUsernameOfLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString(StorageConstants.usernameStorageKey) ?? "";
  }
}
