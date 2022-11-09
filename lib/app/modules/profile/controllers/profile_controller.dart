import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final TextEditingController firstNameController =
      TextEditingController(text: 'Sia');
  final TextEditingController lastNameController =
      TextEditingController(text: 'Corner');
  final TextEditingController emailController =
      TextEditingController(text: 'Corner@gmail.com');
  final RxBool readOnly = false.obs;
  final RxString imagePath = ''.obs;

  void addImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery).then((file) {
      debugPrint('image picked');
      imagePath.value = file?.path ?? '';
    }).onError((error, stackTrace) {
      debugPrint('This is error $error');
      debugPrint('This is stackTrace \n$stackTrace');
    });
  }

  @override
  void onClose() {}
}
