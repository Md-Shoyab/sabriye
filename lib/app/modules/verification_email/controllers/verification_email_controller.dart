import 'package:get/get.dart';

class VerificationEmailController extends GetxController {
  @override
  void onClose() {}

  @override
  void onInit() {
    Get.snackbar('Verify OTP',
        'OTP has sent your email, Please check and verify the OTP');
    super.onInit();
  }
}
