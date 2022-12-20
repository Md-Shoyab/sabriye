import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/giving_back_controller.dart';

class GivingBackView extends GetView<GivingBackController> {
  const GivingBackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.givingBackText,
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
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
                  const VerticalGap(gap: 20),
                  Image.asset(
                    AppAssets.givingBackBannerImage,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                    child: Text(
                      controller.spiritualGuidingPrinciplesTitle.value,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Html(
                        data: controller.givingBackIntroducationText.value),
                  ),
                  GivingBackCards(
                    imageUrl: controller.smartImageUrl.value,
                    descriptionText: controller.smartDescriptionText.value,
                  ),
                  const VerticalGap(gap: 20),
                  GivingBackCards(
                    imageUrl: controller.treeSisterImageUrl.value,
                    descriptionText: controller.treeSisterDescriptionText.value,
                  ),
                  const VerticalGap(),
                  Container(
                    height: Get.height * .2,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          controller.spendingActualDollarImageUrl.value,
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.7),
                          BlendMode.screen,
                        ),
                      ),
                    ),
                    child: Html(
                      data:
                          controller.spendingActualDollarDescriptionText.value,
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  CarouselSlider.builder(
                    itemCount: controller.carouselSliderImageUrlList.length,
                    itemBuilder: (_, i, k) => Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.shadowColors.withOpacity(.5),
                            blurRadius: 4.0,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const VerticalGap(gap: 50),
                          Center(
                            child: SizedBox(
                              width: 200,
                              child: Image.network(
                                controller.carouselSliderImageUrlList[i],
                              ),
                            ),
                          ),
                          Html(
                            data:
                                controller.carouselSliderDescriptionTextList[i],
                            style: {
                              "h4": Style(textAlign: TextAlign.center),
                              "p": Style(
                                textAlign: TextAlign.center,
                                lineHeight: LineHeight.number(1.4),
                              ),
                              "a": Style(color: AppColor.primaryBrown),
                            },
                          ),
                        ],
                      ),
                    ),
                    options: CarouselOptions(
                      height: 350,
                      aspectRatio: 2 / 1,
                      viewportFraction: .99,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, _) {
                        controller.currentCarouselCardIndex(index);
                      },
                    ),
                  ),
                  const VerticalGap(),
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
                          color:
                              controller.currentCarouselCardIndex.value == index
                                  ? AppColors.primaryColor
                                  : AppColors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Html(
                      data: controller.spiritualGuidingPrinciples.value,
                      style: {
                        "h2": Style(color: AppColors.primaryColor),
                        "h4": Style(color: AppColors.primaryColor),
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class GivingBackCards extends StatelessWidget {
  final String imageUrl, descriptionText;
  const GivingBackCards({
    Key? key,
    required this.imageUrl,
    required this.descriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColor.shadowColors.withOpacity(.5),
            blurRadius: 5.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            width: 200,
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
          const VerticalGap(),
          Html(
            data: descriptionText,
            style: {
              "a": Style(color: AppColors.primaryColor),
            },
          ),
        ],
      ),
    );
  }
}
