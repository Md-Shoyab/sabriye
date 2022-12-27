import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/font_names.dart';
import '../../../widgets/gapper.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: Get.height * .6,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.loginBackgroundImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.fromLTRB(35, 100, 35, 0),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.shadowColors.withOpacity(0.5),
                    offset: const Offset(0, 4),
                    blurRadius: 10,
                  )
                ],
              ),
              child: Container(
                margin: const EdgeInsets.all(22),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      AppConstants.forgotPassword,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 25,
                        fontFamily: FontName.gastromond,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const VerticalGap(gap: 13),
                    const Text(
                      AppConstants.enterEmailToResetPassword,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        height: 1.4,
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    Form(
                      key: controller.emailFormKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        validator: ((value) => controller.validateEmail(value)),
                        controller: controller.emailController,
                        cursorColor: AppColors.primaryColor,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          hintText: AppConstants.emailText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: AppColors.primaryColor,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(
                      gap: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        if (controller.emailFormKey.currentState!.validate()) {
                          controller.apiServices.forgotPassword(
                            controller.emailController.text.trim(),
                          );
                        }
                      },
                      child: const Text(
                        AppConstants.loginTxt,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size(
                          Get.width * .8,
                          Get.height * .07,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(44),
                        ),
                        backgroundColor: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  AppConstants.backToLogin,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
