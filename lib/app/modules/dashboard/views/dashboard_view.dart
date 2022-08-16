import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../controllers/dashboard_controller.dart';

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
                        'A \nnew paradigm\nperspective\nfor\nspiritual\nseekers',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                        ),
                      ),
                      VerticalGap(gap: 10),
                      Text(
                        'Unlimited Access to the Inner\nLearning Circle',
                        style: TextStyle(
                          color: AppColors.textColor,
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
                  'Stories',
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage(
                            controller.storyImage[index],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const VerticalGap(gap: 20),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Teachings',
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.teaching1),
                            fit: BoxFit.cover),
                      ),
                      height: 90,
                      width: 150,
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Sacred Relationship',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const VerticalGap(gap: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'In the Spiritual Spotlight',
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.videoInterviewImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 90,
                      width: 150,
                    );
                  }),
                ),
              ),
              const VerticalGap(gap: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Testimonials',
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppAssets.circleBackground),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            controller.testimonalImage[index],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              const VerticalGap(gap: 60),
            ],
          ),
        ),
      ),
    );
  }
}
