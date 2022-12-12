import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/verification_password_controller.dart';

class VerificationPasswordView extends GetView<VerificationPasswordController> {
  const VerificationPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Verification',
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const VerticalGap(gap: 20),
          const Text(
            'Please enter the verification code sent to your registered email ID',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.4,
            ),
          ),
          const VerticalGap(gap: 20),
          OTPTextField(
            otpFieldStyle: OtpFieldStyle(
              focusBorderColor: AppColor.primaryBrown,
            ),
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 80,
            style: const TextStyle(
              fontSize: 17,
              color: AppColor.primaryBrown,
            ),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {},
          ),
          const VerticalGap(gap: 20),
          Center(
            child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                'Verify',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
              style: TextButton.styleFrom(
                minimumSize: const Size(160, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
