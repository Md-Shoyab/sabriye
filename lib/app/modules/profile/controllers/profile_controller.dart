import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import 'package:sabriye/services/api_services.dart';

class ProfileController extends GetxController {
  final TextEditingController firstNameController =
      TextEditingController(text: 'Sia');
  final TextEditingController lastNameController =
      TextEditingController(text: 'Corner');
  final TextEditingController emailController = TextEditingController(
    text: SessionManager.getUserEmail(),
  );
  final RxBool readOnly = false.obs;
  final RxString imagePath = SessionManager.getProfileImagePath()!.obs;
  final ApiServices apiServices = ApiServices();

  void addImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery).then((file) {
      imagePath.value = file?.path ?? AppAssets.deafultProfileAvatar;
      log('${file?.path}');
    }).onError((error, stackTrace) {
      debugPrint('This is error $error');
      debugPrint('This is stackTrace \n$stackTrace');
    });
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
  }
}
