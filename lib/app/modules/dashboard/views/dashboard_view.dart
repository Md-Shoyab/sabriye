import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_colors.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_assets.dart';
import '../../../widgets/gapper.dart';
import '../controllers/dashboard_controller.dart';
import 'dart:core';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const VerticalGap(gap: 30),
              Center(
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.dashboardImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        AppConstants.dashboardCardText,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                        ),
                      ),
                      VerticalGap(gap: 10),
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
              ),
              const VerticalGap(gap: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  AppConstants.storiesText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const VerticalGap(),
              Container(
                padding: const EdgeInsets.only(left: 25.0),
                height: 100,
                width: Get.width,
                child: FutureBuilder<List>(
                  future: controller.apiServices.getAllStories(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data!.isEmpty) {
                        return const Text('0 Stories avaliable');
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(Routes.STORY_PAGE);
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              margin: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    snapshot.data?[index]
                                        ['jetpack_featured_media_url'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
              const VerticalGap(gap: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  AppConstants.teachingText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const VerticalGap(),
              Container(
                color: Colors.transparent,
                height: 100,
                width: Get.width,
                margin: const EdgeInsets.only(left: 30),
                child: FutureBuilder<List>(
                  future: controller.apiServices.getAllTeachingsCategories(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data!.isEmpty) {
                        return const Center(
                          child: Text('0 Categories avaialible'),
                        );
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data?.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(
                                Routes.TEACHINGS1,
                                arguments: {
                                  'id': snapshot.data?[index]['id'],
                                  'appTitle': snapshot.data?[index]['name'],
                                },
                              );
                            },
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.only(left: 10),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    snapshot.data?[index]['thumbnail'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              height: 90,
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  snapshot.data?[index]['name'],
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              const VerticalGap(gap: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  AppConstants.inSpritiualSpotlightSubTxt,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const VerticalGap(),
              Container(
                color: Colors.transparent,
                height: 100,
                width: Get.width,
                margin: const EdgeInsets.only(left: 30),
                child: FutureBuilder<List>(
                  future: controller.apiServices
                      .getAllSpritiualSpotlightVideoInterview(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data!.isEmpty) {
                        return const Center(
                            child: Text('0 Categories avaialible'));
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data?.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(Routes.SPIRITUAL_SPOTLIGHT_DETAILS,
                                  arguments: {
                                    'id': snapshot.data?[index]['id'],
                                  });
                            },
                            child: Container(
                              width: 150,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    snapshot.data?[index]
                                        ['jetpack_featured_media_url'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Image.asset(AppAssets.smallVideoPlayIcon),
                            ),
                          );
                        }),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              const VerticalGap(gap: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  AppConstants.testimonialsText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const VerticalGap(),
              Container(
                padding: const EdgeInsets.only(left: 25.0),
                width: Get.width,
                height: Get.height * .16,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.testimonalUserNameText.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(Routes.TOP_TESTIMONIALS);
                      },
                      child: Container(
                        width: Get.width * .8,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 2.0,
                              color: AppColors.primaryColor,
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
                              width: Get.width * .63,
                              margin: const EdgeInsets.symmetric(vertical: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.testimonalUserNameText[index],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
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
                    );
                  }),
                ),
              ),
              const VerticalGap(gap: 100),
            ],
          ),
        ),
      ),
    );
  }
}
