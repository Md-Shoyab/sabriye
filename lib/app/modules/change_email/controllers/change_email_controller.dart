import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import 'package:sabriye/services/api_services.dart';

class ChangeEmailController extends GetxController {
  final ApiServices apiServices = ApiServices();
  final TextEditingController emailController = TextEditingController();
  final changeEmailFormkey = GlobalKey<FormState>();

  void updateBasicAuth(String updatedEmail, password) {
    debugPrint('come in updateBasicAuth');
    String basicAuth = 'Basic ' +
        base64.encode(
          utf8.encode(
            '$updatedEmail:$password',
          ),
        );
    SessionManager.saveUserToken(basicAuth);
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Provide valid email.";
    } else if (GetUtils.isEmail(value)) {
      debugPrint('This is correct email');
    } else {
      return 'Provide a valid email';
    }
    return null;
  }
}
