import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
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
                  Container(
                    color: AppColor.color6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                          width: 350,
                          child: Text(
                            controller.sessionBannerTitle.value,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              color: AppColor.primaryBrown,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                          child: Text(
                            controller.sessionBannerDescription.value
                                .replaceAll('<p>', '')
                                .replaceAll('<br />', '')
                                .replaceAll('</p>', ''),
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Get.width * .55,
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'The Secret to Unlocking Heaven on Earth',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 1.4,
                                ),
                              ),
                              VerticalGap(),
                              Text(
                                'Is healing trauma and karma across multiple timelines.',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                          child: Image.asset(
                            AppAssets.akashayHealingImageSession,
                            height: 110,
                            width: 115,
                          ),
                        )
                      ],
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 0, 20, 10),
                          child: Image.asset(
                            AppAssets.akshayHealingSabriyeProfile,
                            height: 120,
                            width: 115,
                          ),
                        ),
                        SizedBox(
                          height: 130,
                          width: Get.width * .64,
                          child: const Text(
                            'I have facilitated over a thousand individual Akasha Quantum Soul Healing™ Journeys to date.',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColor.primaryBrown,
                              fontWeight: FontWeight.w600,
                              height: 1.6,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: Get.width,
                    child: Html(data: controller.sessionCheckpoints.value),
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 30,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const VerticalGap(gap: 20),
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
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Html(
                      data: controller.rootCauseOfStruggleContent.value,
                      style: {
                        "h2": Style(
                          lineHeight: LineHeight.number(1.2),
                        ),
                      },
                    ),
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 20,
                    endIndent: 20,
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
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Html(
                      data: controller.whatisAkashayHealingQuantumText.value,
                      style: {
                        "h2": Style(
                          lineHeight: LineHeight.number(1.2),
                        ),
                      },
                    ),
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 20,
                    endIndent: 20,
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
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Html(
                      data: controller.doYouRecognizeThisText.value,
                      style: {
                        "h3": Style(color: AppColor.primaryBrown),
                      },
                    ),
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                    height: 20,
                    indent: 20,
                    endIndent: 20,
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
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Text(
                      controller.bookYourSessionTitle.value,
                      style: const TextStyle(
                        fontSize: 20,
                        color: AppColor.brown,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Html(data: controller.bookYourSessionContent.value),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: const Text(
                      'One-Off sessions:',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.primaryBrown,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.oneOffSessionCardsList.length,
                    itemBuilder: (context, index) => OneOffSessionCards(
                      title: controller.oneOffSessionCardsList[index]['title']
                          ['rendered'],
                      content: controller.oneOffSessionCardsList[index]
                          ['content']['rendered'],
                      routes: Routes.SESSION_DETAILS_AKASHAY,
                      titleContentArguments: {
                        'title': controller.oneOffSessionCardsList[index]
                            ['title']['rendered'],
                        'content': controller.oneOffSessionCardsList[index]
                            ['content']['rendered'],
                      },
                      buylink: controller.oneOffSessionCardsList[index]
                          ['custom_fields']['payment-btn-link'][1],
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: const Text(
                      'Akasha Healing™ Packages',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.primaryBrown,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.akashaHealingSessionCardsList.length,
                    itemBuilder: (context, index) => OneOffSessionCards(
                      title: controller.akashaHealingSessionCardsList[index]
                          ['title']['rendered'],
                      content: controller.akashaHealingSessionCardsList[index]
                          ['content']['rendered'],
                      routes: Routes.SESSION_DETAILS_AKASHAY,
                      titleContentArguments: {
                        'title': controller.akashaHealingSessionCardsList[index]
                            ['title']['rendered'],
                        'content':
                            controller.akashaHealingSessionCardsList[index]
                                ['content']['rendered'],
                      },
                      buylink: controller.akashaHealingSessionCardsList[index]
                          ['custom_fields']['payment-btn-link'][1],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
