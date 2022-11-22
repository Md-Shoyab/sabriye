// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';

Rx<String> USER_TOKEN = ''.obs;
Rx<int> USER_ID = 0.obs;

class SessionManager {
  static final _getStorage = GetStorage();
  static const String _userToken = 'User Token';
  static const String _userId = 'User ID';

  static void saveUserToken(String token) {
    USER_TOKEN.value = token;
    _getStorage.write(_userToken, token);
    debugPrint("User Token Saved ==> $token.");
  }

  static void saveUserId(int id) {
    USER_ID.value = id;
    _getStorage.write(_userId, id);
    debugPrint("User ID Saved ===> $id");
  }

  static int? getUserId() {
    int? id = _getStorage.read(_userId);
    USER_ID.value = id ?? 0;
    debugPrint('UserId ==> $id');
    return id;
  }

  static String? getUserToken() {
    String? token = _getStorage.read(_userToken);
    USER_TOKEN.value = token ?? '';
    debugPrint("User Token ==> $token.");
    return token;
  }

  static void clearSession() {
    _getStorage.erase();
    debugPrint("Session Cleared.");
  }
}
