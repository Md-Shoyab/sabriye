import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../controllers/change_password_verfication_controller.dart';

class ChangePasswordVerficationView
    extends GetView<ChangePasswordVerficationController> {
  const ChangePasswordVerficationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Verification',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const VerticalGap(gap: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Please enter the verification code sent to your registered email ID",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const VerticalGap(gap: 20),
          Center(
            child: OTPTextField(
              length: 4,
              width: Get.width * .9,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: 40,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                focusBorderColor: Colors.grey,
                enabledBorderColor: Colors.grey,
              ),
              outlineBorderRadius: 10,
              style: const TextStyle(fontSize: 17),
              onChanged: (pin) {
                debugPrint("Changed: " + pin);
              },
              onCompleted: (pin) {
                debugPrint("Completed: " + pin);
              },
            ),
          ),
          const VerticalGap(gap: 30),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.NEW_PASSWORD);
            },
            child: const Text(
              'Verify',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.whiteTextColor,
              ),
            ),
            style: TextButton.styleFrom(
              minimumSize: const Size(160, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
