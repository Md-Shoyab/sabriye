import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/constants/app_colors.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../controllers/sacred_relationships_controller.dart';

class SacredRelationshipsView extends GetView<SacredRelationshipsController> {
  const SacredRelationshipsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Sacred Relationships',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: Get.height * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.angleBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const VerticalGap(gap: 20),
          Expanded(
            child: SizedBox(
              height: Get.height,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
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
                      const VerticalGap(),
                      Text(
                        controller.scaredRealtionshipCategories[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const VerticalGap(gap: 40),
                    ],
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
