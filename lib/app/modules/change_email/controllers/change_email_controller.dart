import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class ChangeEmailController extends GetxController {
  final ApiServices apiServices = ApiServices();
  final TextEditingController emailController = TextEditingController();
  @override
  void onClose() {}
}
