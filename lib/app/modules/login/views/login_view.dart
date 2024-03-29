import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_colors.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/font_names.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.loginBackgroundImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(35, 270, 35, 0),
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
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: controller.loginFormKey,
                  child: Container(
                    margin: const EdgeInsets.all(22),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          AppConstants.loginTxt,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 25,
                            fontFamily: FontName.gastromond,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const VerticalGap(gap: 20),
                        TextFormField(
                          controller: controller.emailController,
                          validator: (value) {
                            return controller.validateEmail(value!);
                          },
                          cursorColor: AppColors.primaryColor,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            hintText: AppConstants.emailText,
                            hintStyle: const TextStyle(
                              fontFamily: FontName.sourceSansPro,
                              fontWeight: FontWeight.w600,
                              color: AppColor.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: AppColors.primaryColor,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        const VerticalGap(gap: 15),
                        TextFormField(
                          controller: controller.passwordController,
                          validator: (value) {
                            return controller.validatePassword(value!);
                          },
                          cursorColor: AppColors.primaryColor,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            hintText: AppConstants.passwordText,
                            hintStyle: const TextStyle(
                              fontFamily: FontName.sourceSansPro,
                              fontWeight: FontWeight.w600,
                              color: AppColor.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: AppColors.primaryColor,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        const VerticalGap(gap: 20),
                        TextButton(
                          onPressed: controller.loginUser,
                          child: const Text(
                            AppConstants.loginTxt,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: AppColors.white,
                              fontFamily: FontName.sourceSansPro,
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
                        const VerticalGap(gap: 15),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.FORGOT_PASSWORD);
                          },
                          child: const Text(
                            AppConstants.forgotPassword,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: FontName.sourceSansPro,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalGap(),
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.MAIN_SCREEN);
                },
                child: const Text(
                  'Login as Guest User',
                  style: TextStyle(
                    color: AppColor.primaryBrown,
                    fontSize: 16,
                    fontFamily: FontName.sourceSansPro,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const VerticalGap(),
              const Text(
                AppConstants.dontHaveAccountTxt,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontFamily: FontName.sourceSansPro,
                ),
              ),
              TextButton(
                onPressed: () async {
                  if (!await launchUrl(
                    controller.oneWeekTrial,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw 'Could not launch ${controller.oneWeekTrial}';
                  }
                },
                child: const Text(
                  AppConstants.oneWeekTrial,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontFamily: FontName.sourceSansPro,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
