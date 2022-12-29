import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/font_names.dart';
import '../../../widgets/gapper.dart';
import '../../../widgets/program_testimony.dart';
import '../controllers/programs_details_controller.dart';

class ProgramsDetailsView extends GetView<ProgramsDetailsController> {
  const ProgramsDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.programDetailsText,
          style: TextStyle(
            fontFamily: FontName.sourceSansPro,
            color: AppColors.brownColor,
            fontWeight: FontWeight.w700,
            fontSize: 20,
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
                    margin: const EdgeInsets.fromLTRB(35, 20, 35, 20),
                    child: Text(
                      controller.akashaHealingTitle.value,
                      style: const TextStyle(
                        fontFamily: FontName.gastromond,
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: AppColor.primaryBrown,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                    child:
                        Image.network(controller.akashaHealingimageUrl.value),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                    child: Html(
                      data: controller.akashaHealingContent.value,
                      style: {
                        "p": Style(
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w600,
                          lineHeight: LineHeight.rem(1.3),
                          fontSize: FontSize.large,
                          textAlign: TextAlign.left,
                        ),
                      },
                    ),
                  ),
                  const VerticalGap(),
                  ProgramTestimony(
                    reviewerName: controller.superiorShaniceText.value,
                    reviewFullContent:
                        controller.superiorShaniceTestimonyContent.value,
                    profileImagePath: controller.superiorShaniceImageUrl.value,
                  ),
                  const VerticalGap(),
                  Container(
                    height: 177,
                    width: Get.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          controller.blueBannerImageUrl.value,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                    child: Html(
                      data: controller.closingTheDoorContent.value,
                      style: {
                        "h2": Style(
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.larger,
                        ),
                        "p": Style(
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.medium,
                          lineHeight: LineHeight.rem(1.3),
                        ),
                      },
                    ),
                  ),
                  const VerticalGap(),
                  ProgramTestimony(
                    reviewerName: controller.jasmijnDeGraafText.value,
                    reviewFullContent:
                        controller.jasmijnDeGraafTestimonyContent.value,
                    profileImagePath: controller.jasmijnDeGraafImageUrl.value,
                  ),
                  const VerticalGap(),
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                    child: const Text(
                      '''Five Reasons to Join our growing community of
Akasha Quantum Soul Healing™ Practitioners worldwide''',
                      style: TextStyle(
                        fontFamily: FontName.gastromond,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1.5,
                        color: AppColor.brown,
                      ),
                    ),
                  ),
                  const VerticalGap(),
                  CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (_, i, k) => const ProgramCarouselCard(
                      carouselCardTitle:
                          '01. Help Clients Achieve Life-Changing Results',
                      carouselCardDescription:
                          'Because Akasha Quantum Soul Healing™ addresses the root cause of one’s issues, there’s no need for complicated, drawn-out, or painful therapy sessions that go on and on. Often in as little as one single session, deep subconscious patterns can be healed once and for all.',
                      carouselCardBackgroundImage:
                          'https://app.sabriyeayana.com/wp-content/uploads/2022/12/nomad-11.jpg',
                    ),
                    options: CarouselOptions(
                      height: 350,
                      viewportFraction: 1,
                      initialPage: 0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: AppColors.primaryColor,
                          ),
                          color: AppColor.primaryBrown,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  const VerticalGap(),
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                    child: Html(
                      data: controller.clientResultContent.value,
                      style: {
                        "h2": Style(
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.larger,
                          color: AppColor.brown,
                        ),
                        "p": Style(
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.medium,
                          lineHeight: LineHeight.rem(1.3),
                        ),
                        "li": Style(
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.medium,
                          lineHeight: LineHeight.rem(0.9),
                        ),
                      },
                    ),
                  ),
                  ProgramTestimony(
                    reviewerName: controller.erinCockrellText.value,
                    reviewFullContent:
                        controller.erinCockrellTestimonyContent.value,
                    profileImagePath: controller.erinCockrellImageUrl.value,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                    child: Html(
                      data: controller.akashaHealingCertification.value,
                      style: {
                        "h2": Style(
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.larger,
                          color: AppColor.brown,
                          lineHeight: LineHeight.rem(1.3),
                        ),
                        "p": Style(
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.medium,
                          lineHeight: LineHeight.rem(1.3),
                        ),
                      },
                    ),
                  ),
                  const VerticalGap(),
                  SizedBox(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      clipBehavior: Clip.none,
                      shrinkWrap: true,
                      itemCount: controller.akashaHealingModulesList.length,
                      itemBuilder: (context, index) => ProgramModuleCards(
                        moduleNumber: controller.akashaHealingModulesList[index]
                            ['custom_fields']['module'][0],
                        moduleTitle: controller.akashaHealingModulesList[index]
                            ['title']['rendered'],
                        moduleContent:
                            controller.akashaHealingModulesList[index]
                                ['content']['rendered'],
                      ),
                    ),
                  ),
                  const VerticalGap(),
                  ProgramTestimony(
                    reviewerName: controller.cindyPetersText.value,
                    reviewFullContent:
                        controller.cindyPetersTestimonyContent.value,
                    profileImagePath: controller.cindyPetersImageUrl.value,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                    child: Html(
                      data: controller.akashaHealingWhoIsProgram.value,
                      style: {
                        "h2": Style(
                          fontFamily: FontName.gastromond,
                          fontWeight: FontWeight.w400,
                          color: AppColor.brown,
                          lineHeight: LineHeight.rem(1.3),
                        ),
                        "p": Style(
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w400,
                          lineHeight: LineHeight.rem(1.3),
                        ),
                      },
                    ),
                  ),
                  Container(
                    color: AppColor.backgroundColor,
                    padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const VerticalGap(),
                        const Text(
                          'Investment',
                          style: TextStyle(
                            fontFamily: FontName.gastromond,
                            fontSize: 18,
                          ),
                        ),
                        const VerticalGap(gap: 20),
                        Container(
                          height: 220,
                          decoration: BoxDecoration(
                            color: AppColor.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const VerticalGap(gap: 20),
                        Container(
                          height: 220,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const VerticalGap(gap: 40),
                      ],
                    ),
                  ),
                  const VerticalGap(),
                  ProgramTestimony(
                    reviewerName: controller.lauraMullisText.value,
                    reviewFullContent:
                        controller.lauraMullisTestimonyContent.value,
                    profileImagePath: controller.lauraMullisImageUrl.value,
                  ),
                ],
              ),
      ),
    );
  }
}

class ProgramModuleCards extends StatelessWidget {
  final String moduleNumber, moduleTitle, moduleContent;
  const ProgramModuleCards({
    Key? key,
    required this.moduleNumber,
    required this.moduleTitle,
    required this.moduleContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
      padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
      decoration: BoxDecoration(
        color: AppColor.primaryBrown,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            moduleNumber,
            style: const TextStyle(
              fontFamily: FontName.sourceSansPro,
              fontWeight: FontWeight.w600,
              color: AppColor.white,
            ),
          ),
          const VerticalGap(),
          Text(
            moduleTitle,
            style: const TextStyle(
              fontFamily: FontName.gastromond,
              fontWeight: FontWeight.w400,
              color: AppColor.white,
            ),
          ),
          Html(
            data: moduleContent,
            style: {
              "p": Style(
                fontFamily: FontName.sourceSansPro,
                fontWeight: FontWeight.w400,
                color: AppColor.white,
                lineHeight: LineHeight.rem(1.2),
              ),
            },
          ),
        ],
      ),
    );
  }
}

class ProgramCarouselCard extends StatelessWidget {
  final String carouselCardTitle,
      carouselCardDescription,
      carouselCardBackgroundImage;
  const ProgramCarouselCard({
    Key? key,
    required this.carouselCardTitle,
    required this.carouselCardDescription,
    required this.carouselCardBackgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
      padding: const EdgeInsets.fromLTRB(26, 35, 26, 35),
      width: Get.width * .85,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(carouselCardBackgroundImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            AppColor.black.withOpacity(.6),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            carouselCardTitle,
            style: const TextStyle(
              fontFamily: FontName.gastromond,
              fontWeight: FontWeight.w400,
              color: AppColor.white,
              fontSize: 18,
            ),
          ),
          const VerticalGap(gap: 15),
          Text(
            carouselCardDescription,
            style: const TextStyle(
              fontFamily: FontName.sourceSansPro,
              fontWeight: FontWeight.w400,
              color: AppColor.white,
              fontSize: 14,
              height: 1.9,
            ),
          ),
        ],
      ),
    );
  }
}
