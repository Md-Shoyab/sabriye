import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import 'package:sabriye/services/api_services.dart';

class ChangeEmailController extends GetxController {
  final ApiServices apiServices = ApiServices();
  final TextEditingController emailController = TextEditingController();

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
}
