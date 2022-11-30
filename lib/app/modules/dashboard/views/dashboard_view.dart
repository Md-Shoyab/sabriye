import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/gapper.dart';
import '../controllers/dashboard_controller.dart';
import 'dart:core';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.dashboardImage),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          VerticalGap(),
                          Text(
                            AppConstants.dashboardCardText,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.6,
                            ),
                          ),
                          VerticalGap(gap: 20),
                          Text(
                            AppConstants.dashboardCardText2,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalGap(gap: 45),
                    const Text(
                      AppConstants.storiesText,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(),
                    SizedBox(
                      height: Get.height * .09,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: AppColor.primaryBrown,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 35),
                    const Text(
                      AppConstants.teachingText,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(gap: 17),
                    SizedBox(
                      height: Get.height * .12,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.teachingCategories.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Get.toNamed(
                              Routes.TEACHINGS1,
                              arguments: {
                                'id': controller.teachingCategories[index],
                                'appTitle': controller.teachingCategories[index]
                                    ['name'],
                              },
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.fromLTRB(5, 0, 3, 10),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 90,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                image: NetworkImage(
                                  controller.teachingCategories[index]
                                      ['thumbnail'][0],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              controller.teachingCategories[index]['name'],
                              style: const TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 35),
                    const Text(
                      AppConstants.inSpritiualSpotlightSubTxt,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(gap: 17),
                    SizedBox(
                      height: Get.height * .12,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            controller.spiritualSpotlightVideoInterview.length,
                        itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          height: 90,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: DecorationImage(
                              image: NetworkImage(
                                controller
                                        .spiritualSpotlightVideoInterview[index]
                                    ['thumbnail'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Image.asset(
                            AppAssets.smallVideoPlayIcon,
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 35),
                    const Text(
                      AppConstants.testimonialsText,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(gap: 17),
                    SizedBox(
                      width: Get.width,
                      height: Get.height * .15,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.testimonalUserNameText.length,
                        itemBuilder: (context, index) => Container(
                          width: Get.width * .8,
                          margin: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: AppColor.shadowColors.withOpacity(0.5),
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 10,
                                ),
                                child: CircleAvatar(
                                  radius: 25,
                                  foregroundImage: AssetImage(
                                    controller.testimonialsUserImage[index],
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.testimonalUserNameText[index],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.primaryBrown,
                                      ),
                                    ),
                                    const VerticalGap(gap: 3),
                                    RatingBar.builder(
                                      ignoreGestures: true,
                                      initialRating: 5.0,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {},
                                      itemSize: 15,
                                    ),
                                    const VerticalGap(gap: 5),
                                    SizedBox(
                                      width: Get.width * .6,
                                      child: Text(
                                        controller
                                            .testimonalUserTestimonyText[index],
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
