import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/constants/app_colors.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

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
                        AppConstants.loginTxt,
                        style: TextStyle(
                          color: AppColors.themeTextColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const VerticalGap(gap: 20),
                      TextFormField(
                        cursorColor: AppColors.themeTextColor,
                        decoration: InputDecoration(
                          hintText: AppConstants.enterEmail,
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
                      const VerticalGap(),
                      TextFormField(
                        cursorColor: AppColors.primaryColor,
                        decoration: InputDecoration(
                          hintText: AppConstants.enterPassword,
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
                      const VerticalGap(
                        gap: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.MAIN_SCREEN);
                        },
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
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.FORGOT_PASSWORD);
                        },
                        child: const Text(
                          AppConstants.forgotPassword,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.themeTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  AppConstants.dontHaveAccountTxt,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppConstants.oneWeekTrial,
                    style: TextStyle(
                      color: AppColors.themeTextColor,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
