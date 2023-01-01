import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/font_names.dart';
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
                            fontFamily: FontName.gastromond,
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
                            fontFamily: FontName.gastromond,
                            fontWeight: FontWeight.w400,
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
                                          fontWeight: FontWeight.w900,
                                          fontFamily: FontName.sourceSansPro,
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
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: FontName.sourceSansPro,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        minimumSize: const Size(300, 60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(44),
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
                                          fontWeight: FontWeight.w900,
                                          fontFamily: FontName.sourceSansPro,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors.primaryColor,
                                        minimumSize: const Size(150, 60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(44),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
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
