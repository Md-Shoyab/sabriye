import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../services/api_services.dart';

class LoginController extends GetxController {
  late TextEditingController usernameController, passwordController;
  ApiServices apiServices = ApiServices();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String? validateUsername(String value) {
    if (value.isEmpty) {
      return "Provide valid username.";
    } else if (value.contains(' ')) {
      return "Username can’t contain space";
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length < 8) {
      return "Password must be greater than 8 digits.";
    } else {
      return null;
    }
  }

  void loginUser() {
    if (loginFormKey.currentState!.validate()) {
      String basicAuth = 'Basic ' +
          base64.encode(
            utf8.encode(
              '${usernameController.text}:${passwordController.text}',
            ),
          );
      apiServices.loginUser(basicAuth);
    }
  }

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
  }
}
