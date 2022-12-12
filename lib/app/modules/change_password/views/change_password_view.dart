import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.changePassword,
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
      body: Form(
        key: controller.passwordFormkey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const VerticalGap(gap: 20),
            const Center(
              child: Text(
                'Please enter the new password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            TextFormField(
              controller: controller.newPasswordController,
              validator: (value) => controller.validatePassword(value!),
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                    width: 2.0,
                  ),
                ),
                hintText: AppConstants.newPasswordText,
              ),
            ),
            const VerticalGap(gap: 20),
            TextFormField(
              controller: controller.confirmPasswordController,
              validator: (value) => controller.validateConfirmPassword(value!),
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                    width: 2.0,
                  ),
                ),
                hintText: AppConstants.confrimNewPasswordText,
              ),
            ),
            const VerticalGap(gap: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  controller.passwordFormkey.currentState!.validate()
                      ? Get.toNamed(Routes.VERIFICATION_PASSWORD)
                      : null;
                },
                child: const Text(
                  AppConstants.saveText,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  minimumSize: const Size(150, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
