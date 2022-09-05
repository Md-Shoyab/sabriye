import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
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
              margin: const EdgeInsets.only(top: 100),
              width: Get.width * .9,
              child: Card(
                elevation: 5.0,
                shadowColor: Colors.pink.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        AppConstants.forgotPassword,
                        style: TextStyle(
                          color: AppColors.themeTextColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const VerticalGap(),
                      const Text(
                        AppConstants.enterEmailToResetPassword,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.themeTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const VerticalGap(gap: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: AppConstants.emailText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const VerticalGap(
                        gap: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          AppConstants.loginTxt,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteTextColor,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          minimumSize: Size(
                            Get.width * .8,
                            Get.height * .07,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor: AppColors.buttonColor,
                        ),
                      ),
                    ],
                  ),
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
                    color: AppColors.themeTextColor,
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
