import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_colors.dart';
import '../controllers/welcome_screens_controller.dart';

class WelcomeScreensView extends GetView<WelcomeScreensController> {
  const WelcomeScreensView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: controller.welcomePages.length,
              onPageChanged: controller.updateSelectedIndex,
              controller: controller.welcomePageController,
              itemBuilder: ((context, index) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width,
                        height: Get.height * .45,
                        child: Image.asset(
                          controller.welcomePages[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: Get.height * .1),
                      Container(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          controller.welcomePages[index].title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * .05),
                      Container(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          controller.welcomePages[index].subTitle,
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * .15),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 55,
                        ),
                        child: Obx(
                          () => Row(
                            mainAxisAlignment:
                                controller.currentPageIndex.value == 2
                                    ? MainAxisAlignment.center
                                    : MainAxisAlignment.spaceBetween,
                            children: [
                              controller.currentPageIndex.value == 2
                                  ? Container()
                                  : TextButton(
                                      onPressed: () {
                                        Get.offAllNamed(Routes.LOGIN);
                                      },
                                      child: const Text(
                                        'SKIP',
                                        style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                              controller.currentPageIndex.value == 2
                                  ? TextButton(
                                      onPressed: () {
                                        Get.offAllNamed(Routes.LOGIN);
                                      },
                                      child: const Text(
                                        'Finish',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        minimumSize: Size(
                                          Get.width * .7,
                                          Get.height * .07,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        backgroundColor: AppColors.primaryColor,
                                      ),
                                    )
                                  : TextButton(
                                      onPressed: () {
                                        controller.welcomePageController
                                            .nextPage(
                                          duration:
                                              const Duration(microseconds: 500),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                      child: const Text(
                                        'NEXT',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors.primaryColor,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 50,
                                          vertical: 15,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
