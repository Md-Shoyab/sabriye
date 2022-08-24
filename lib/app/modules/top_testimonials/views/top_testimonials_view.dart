import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/top_testimonials_cards.dart';
import '../controllers/top_testimonials_controller.dart';

class TopTestimonialsView extends GetView<TopTestimonialsController> {
  const TopTestimonialsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          title: const Text(
            'Top Testimonials',
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
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.testimonialsBgImage,
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Expanded(
            child: SizedBox(
              height: Get.height,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: ((context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        index == 0
                            ? Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: const Text(
                                    'What clients say about doing Akasha Healing™\nJourneys with me',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(height: 0),
                        TopTestimonialCard(
                          imagePath: controller.reviewProfileImage[index],
                          reviewText: controller.reviewText[index],
                          reviwerName: controller.reviewerName[index],
                          professionText: controller.professionText[index],
                        )
                      ],
                    )),
              ),
            ),
          ),
        ));
  }
}

/*  */

/* */