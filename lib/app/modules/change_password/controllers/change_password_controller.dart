import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final passwordFormkey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? validatePassword(String value) {
    if (value.length < 8) {
      return "Password must be greater than 8 digits.";
    } else {
      return null;
    }
  }

  String? validateConfirmPassword(String value) {
    if (value.length < 8) {
      return "Password must be greater than 8 digits.";
    } else if (newPasswordController.text != confirmPasswordController.text) {
      return " New Password & Confirm Password doesn't match";
    }
    return null;
  }
}
