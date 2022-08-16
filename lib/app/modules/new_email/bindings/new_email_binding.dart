import 'package:get/get.dart';

import '../controllers/new_email_controller.dart';

class NewEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewEmailController>(
      () => NewEmailController(),
    );
  }
}
