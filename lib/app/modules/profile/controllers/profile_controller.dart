import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final TextEditingController firstNameController =
      TextEditingController(text: 'Sia');
  final TextEditingController lastNameController =
      TextEditingController(text: 'Corner');
  final TextEditingController emailController =
      TextEditingController(text: 'Corner@gmail.com');
      
  final RxBool readOnly = false.obs;

  @override
  void onClose() {}
}
