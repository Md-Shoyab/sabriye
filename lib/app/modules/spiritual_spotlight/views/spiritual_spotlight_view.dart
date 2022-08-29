import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_colors.dart';
import '../controllers/spiritual_spotlight_controller.dart';

class SpiritualSpotlightView extends GetView<SpiritualSpotlightController> {
  const SpiritualSpotlightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'In the Spiritual Spotlight',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: Get.height,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(Routes.SPIRITUAL_SPOTLIGHT_DETAILS);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      height: Get.height * .25,
                      width: Get.width * .7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            controller.spiritualImageList[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Image.asset(AppAssets.videoPlayButton),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
