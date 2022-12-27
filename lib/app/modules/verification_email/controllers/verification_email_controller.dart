import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';

class VerificationEmailController extends GetxController {
  final OtpFieldController otpFieldController = OtpFieldController();
  @override
  void onClose() {}

  @override
  void onInit() {
    Get.snackbar('Verify OTP',
        'OTP has sent your email, Please check and verify the OTP');
    super.onInit();
  }
}
