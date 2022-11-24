import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import '../../../../services/api_services.dart';

class LoginController extends GetxController {
  late TextEditingController emailController, passwordController;
  ApiServices apiServices = ApiServices();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String? validatePassword(String value) {
    if (value.length < 8) {
      return "Password must be greater than 8 digits.";
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Provide valid email.";
    } else if (GetUtils.isEmail(value)) {
    } else {
      return 'Provide a valid email';
    }
    return null;
  }

  void loginUser() {
    if (loginFormKey.currentState!.validate()) {
      String basicAuth = 'Basic ' +
          base64.encode(
            utf8.encode(
              '${emailController.text}:${passwordController.text}',
            ),
          );
      SessionManager.savePassword(passwordController.text);
      apiServices.loginUser(basicAuth);
    }
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
