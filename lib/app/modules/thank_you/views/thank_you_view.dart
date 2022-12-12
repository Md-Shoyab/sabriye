import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../controllers/thank_you_controller.dart';

class ThankYouView extends GetView<ThankYouController> {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: controller.isLoading.value
                    ? const AssetImage(AppAssets.transparentBackground)
                    : const AssetImage(AppAssets.flowerImage3),
                alignment: Alignment.topRight,
              ),
            ),
            child: Obx(
              () => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView(
                      padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                      children: [
                        const Text(
                          'Thank You!',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const VerticalGap(gap: 30),
                        const Text(
                          'Hi beautiful soul!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const VerticalGap(gap: 20),
                        const Text(
                          'You’ve made it. I am super excited\nto share myUltimate Guide to\nInner Union with you.',
                          style: TextStyle(
                            height: 1.4,
                          ),
                        ),
                        const VerticalGap(gap: 40),
                        Container(
                          height: 220,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const VerticalGap(gap: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(
                              'Download Ebook',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              minimumSize: const Size(150, 40),
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
          ),
        ),
      ),
    );
  }
}
