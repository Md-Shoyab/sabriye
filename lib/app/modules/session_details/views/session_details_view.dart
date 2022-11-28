import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/on_off_session_card.dart';
import 'package:sabriye/app/widgets/sessions_testimony.dart';
import '../../../constants/app_colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/session_details_controller.dart';

class SessionDetailsView extends GetView<SessionDetailsController> {
  const SessionDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Sessions',
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
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  Html(data: controller.sessionDetails.value),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  SessionTestimony(
                    reviewerName: controller.testimonials[5]['title']
                        ['rendered'],
                    reviewFullContent: controller.testimonials[5]['content']
                        ['rendered'],
                    reviewRating: 5.0,
                    profileImagePath: controller.testimonials[5]['thumbnail'],
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Html(data: controller.rootCauseOfStruggleContent.value),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  SessionTestimony(
                    reviewerName: controller.testimonials[4]['title']
                        ['rendered'],
                    reviewFullContent: controller.testimonials[4]['content']
                        ['rendered'],
                    reviewRating: 5.0,
                    profileImagePath: controller.testimonials[4]['thumbnail'],
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Html(data: controller.whatisAkashayHealingQuantumText.value),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  SessionTestimony(
                    reviewerName: controller.testimonials[3]['title']
                        ['rendered'],
                    reviewFullContent: controller.testimonials[3]['content']
                        ['rendered'],
                    reviewRating: 5.0,
                    profileImagePath: controller.testimonials[3]['thumbnail'],
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Html(data: controller.doYouRecognizeThisText.value),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  SessionTestimony(
                    reviewerName: controller.testimonials[2]['title']
                        ['rendered'],
                    reviewFullContent: controller.testimonials[2]['content']
                        ['rendered'],
                    reviewRating: 5.0,
                    profileImagePath: controller.testimonials[2]['thumbnail'],
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      controller.bookYourSessionTitle.value,
                      style: const TextStyle(
                        fontSize: 20,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Html(data: controller.bookYourSessionContent.value),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.sessionCardDetails.length,
                    itemBuilder: (context, index) => OneOffSessionCards(
                      title: controller.sessionCardDetails[index]['title']
                          ['rendered'],
                      content: controller.sessionCardDetails[index]['content']
                          ['rendered'],
                      routes: Routes.SESSION_DETAILS_AKASHAY,
                      titleContentArguments: {
                        'title': controller.sessionCardDetails[0]['title']
                            ['rendered'],
                        'content': controller.sessionCardDetails[0]['content']
                            ['rendered'],
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
