import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import 'package:sabriye/services/api_services.dart';

class ProfileController extends GetxController {
  // final

  late TextEditingController firstNameController;

  //  = TextEditingController(
  //   text: SessionManager.getFirstName(),
  // );
  final TextEditingController lastNameController = TextEditingController(
    text: SessionManager.getlastName(),
  );
  final TextEditingController emailController = TextEditingController(
    text: SessionManager.getUserEmail(),
  );

  final RxBool readOnly = false.obs;
  final RxString selectedImagePath = ''.obs;
  final RxString existingImageUrl = SessionManager.getProfileImagePath().obs;

  final ApiServices apiServices = ApiServices();

  void pickImage() async {
    await ImagePicker()
        .pickImage(
      source: ImageSource.gallery,
    )
        .then(
      (imageFile) {
        if (imageFile != null) {
          selectedImagePath.value = imageFile.path;
        }
      },
    ).onError(
      (error, stackTrace) {
        debugPrint('This is error $error');
        debugPrint('This is stackTrace \n$stackTrace');
      },
    );
  }

  @override
  void onInit() {
    firstNameController = TextEditingController(
      text: SessionManager.getFirstName(),
    );
    super.onInit();
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
  }
}
