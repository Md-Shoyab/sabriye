import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/font_names.dart';
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
                      margin: const EdgeInsets.fromLTRB(16, 24, 15, 0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(controller.bannerImageUrl.value),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const VerticalGap(),
                          SizedBox(
                            width: Get.width * .25,
                            child: Text(
                              controller.dashboardBigText.value,
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontFamily: FontName.gastromond,
                                fontWeight: FontWeight.w400,
                                height: 1.6,
                              ),
                            ),
                          ),
                          const VerticalGap(gap: 20),
                          SizedBox(
                            width: Get.width * .45,
                            child: Text(
                              controller.dashboardSmallText.value,
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: FontName.sourceSansPro,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalGap(gap: 45),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text(
                        AppConstants.storiesText,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ),
                    const VerticalGap(),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      height: Get.height * .09,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Get.toNamed(Routes.STORY_PAGE);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 38,
                              backgroundImage: NetworkImage(
                                controller.storiesItems[index]['thumbnail'],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 35),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text(
                        AppConstants.teachingText,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 17),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      height: Get.height * .12,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.teachingCategories.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () async {
                            await controller.getAllTeachingsSubCategories(
                              controller.teachingCategories[index]['id']
                                  .toString(),
                            );
                            await Get.toNamed(
                              controller.teachingSubCategories.isEmpty
                                  ? Routes.TEACHINGS2
                                  : Routes.TEACHINGS1,
                              arguments: {
                                'id': controller.teachingCategories[index]
                                    ['id'],
                                'appTitle': controller.teachingCategories[index]
                                    ['name'],
                                'banner_image': controller
                                    .teachingCategories[index]['banner_image'],
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
                              image: DecorationImage(
                                image: NetworkImage(
                                  controller.teachingCategories[index]
                                      ['thumbnail'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              controller.teachingCategories[index]['name'],
                              style: const TextStyle(
                                color: AppColor.white,
                                fontSize: 12,
                                fontFamily: FontName.sourceSansPro,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 35),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text(
                        AppConstants.inSpritiualSpotlightSubTxt,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 17),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      height: Get.height * .12,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            controller.spiritualSpotlightVideoInterview.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Get.toNamed(Routes.SPIRITUAL_SPOTLIGHT_DETAILS,
                                arguments: {
                                  'id': controller
                                          .spiritualSpotlightVideoInterview[
                                      index]['id'],
                                });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 90,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: NetworkImage(
                                  controller.spiritualSpotlightVideoInterview[
                                      index]['thumbnail'],
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
                    ),
                    const VerticalGap(gap: 35),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text(
                        AppConstants.testimonialsText,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 17),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      width: Get.width,
                      height: Get.height * .15,
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.testimonalUserNameText.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Get.toNamed(Routes.TOP_TESTIMONIALS);
                          },
                          child: Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller
                                            .testimonalUserNameText[index],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: FontName.gastromond,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.primaryBrown,
                                        ),
                                      ),
                                      const VerticalGap(gap: 5),
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
                                                  .testimonalUserTestimonyText[
                                              index],
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontFamily: FontName.sourceSansPro,
                                            fontWeight: FontWeight.w300,
                                          ),
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
