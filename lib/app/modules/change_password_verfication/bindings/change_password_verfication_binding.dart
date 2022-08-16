import 'package:get/get.dart';

import '../controllers/change_password_verfication_controller.dart';

class ChangePasswordVerficationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordVerficationController>(
      () => ChangePasswordVerficationController(),
    );
  }
}
