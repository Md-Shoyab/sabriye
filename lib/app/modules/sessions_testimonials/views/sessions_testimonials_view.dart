import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/sessions_testimonials_controller.dart';

class SessionsTestimonialsView extends GetView<SessionsTestimonialsController> {
  const SessionsTestimonialsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Sessions Testimonials',
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.testimonialsBgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Expanded(
          child: SizedBox(
            height: Get.height,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => Column(
                children: [
                  index == 0
                      ? Container(
                          width: Get.width * .9,
                          margin: const EdgeInsets.all(10),
                          child: const Text(
                            'What clients say about doing Akasha Healing™ Journeys with me',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : const SizedBox(),
                  const VerticalDivider(),
                  Container(
                    height: 300,
                    width: Get.width * .9,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.fromLTRB(12, 20, 12, 5),
                    decoration: BoxDecoration(
                      color: AppColors.whiteTextColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: AppColors.bgLight,
                        )
                      ],
                    ),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage(AppAssets.testimonialsProfileImage2),
                        ),
                        VerticalGap(),
                        Text(
                          'Lauren Maniere',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        VerticalGap(),
                        Text(
                          '“My mind has been blown open! After working with Sabriyé, I not only worked through the mental blocks that were holding me back from achieving some of the outcomes I had in visioned in my life, but with her new method soul clarity, it helped illuminate the path that I am meant to pursue. I couldn’t be more excited for the next part of my journey! Thank you Sabriyé for helping me realize my soul power and bringing it back to life!”',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
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
    );
  }
}
