import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_colors.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../controllers/sacred_relationships_controller.dart';

class SacredRelationshipsView extends GetView<SacredRelationshipsController> {
  const SacredRelationshipsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.scaredRelationshipText,
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
      body: SizedBox(
        height: Get.height,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                index == 0
                    ? Container(
                        margin: const EdgeInsets.only(
                          bottom: 20,
                          top: 20,
                        ),
                        height: Get.height * .2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppAssets.angleBackgroundImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : const SizedBox(),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.KARMIC_RELATIONSHIPS);
                  },
                  child: Container(
                    height: Get.height * .23,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          controller.scaredRealtionshipCategoryImage[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const VerticalGap(),
                Text(
                  controller.scaredRealtionshipCategories[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const VerticalGap(gap: 10),
              ],
            );
          }),
        ),
      ),
    );
  }
}
