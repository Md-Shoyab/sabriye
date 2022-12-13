import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../controllers/thank_you_controller.dart';

class ThankYouView extends GetView<ThankYouController> {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                : Html(data: controller.thankYouScreenData.value),
          ),
        ),
      ),
    );
  }
}
