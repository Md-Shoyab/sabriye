import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../controllers/karmic_relationships_controller.dart';

class KarmicRelationshipsView extends GetView<KarmicRelationshipsController> {
  const KarmicRelationshipsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Karmic Relationships',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: Get.height * .2,
              child: Image.asset(
                AppAssets.angleBackgroundImage,
                fit: BoxFit.cover,
              ),
            ),
            const VerticalGap(gap: 20),
            SizedBox(
              height: Get.height * .8,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(Routes.TEACHINGS_DETAILS);
                    },
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: Get.height * .23,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            controller.karmicRelationshipCategoryImage[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Text(
                          controller.karmicRealtionshipPostTitle[index],
                          style: const TextStyle(
                            color: AppColors.whiteTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
