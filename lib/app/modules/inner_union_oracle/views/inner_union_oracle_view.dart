import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/font_names.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/orcal_bullet_points.dart';
import '../controllers/inner_union_oracle_controller.dart';

class InnerUnionOracleView extends GetView<InnerUnionOracleController> {
  const InnerUnionOracleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.innerUnionText,
          style: TextStyle(
            fontFamily: FontName.sourceSansPro,
            color: AppColors.brownColor,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        automaticallyImplyLeading: false,
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
                  Image.network(controller.innerUnionBannerImageUrl.value),
                  const VerticalGap(gap: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Html(
                      data: controller.innerUnionBannerIntroText.value,
                      style: {
                        "h2": Style(
                          textAlign: TextAlign.center,
                          fontSize: FontSize.xLarge,
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryBrown,
                        ),
                        "div": Style(
                          textAlign: TextAlign.center,
                          fontFamily: FontName.sourceSansPro,
                          fontSize: FontSize.large,
                          fontWeight: FontWeight.w200,
                        ),
                        "a": Style(color: AppColor.primaryBrown),
                        "h3": Style(
                          fontFamily: FontName.sourceSansPro,
                          fontWeight: FontWeight.w300,
                          fontSize: FontSize.larger,
                          textAlign: TextAlign.center,
                          lineHeight: LineHeight.rem(1.3),
                        )
                      },
                    ),
                  ),
                  InnerUnionPointers(
                    pointNumber: '01',
                    pointText: controller.boxOneText.value,
                  ),
                  InnerUnionPointers(
                    pointNumber: '02',
                    pointText: controller.boxTwoText.value,
                  ),
                  InnerUnionPointers(
                    pointNumber: '03',
                    pointText: controller.boxThreeText.value,
                  ),
                  const VerticalGap(gap: 20),
                  Center(
                    child: FlipCard(
                      front: Center(
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(AppAssets.orcaleCardsImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      onFlip: controller.onFlip,
                      back: Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.pink[200],
                          image: const DecorationImage(
                            image: AssetImage(
                              AppAssets.flowerImage,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        child: Html(
                          data: controller.orcaleCardsList[controller
                              .oracleCardIndex.value]['title']['rendered'],
                          style: {
                            "h1": Style(
                              color: Colors.amber,
                            )
                          },
                        ),
                      ),
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  Visibility(
                    visible: controller.backViewCard.value,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              'Extended Card Meaning',
                              style: TextStyle(
                                fontFamily: FontName.gastromond,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: AppColor.brown,
                              ),
                            ),
                          ),
                          Html(
                            data: controller.orcaleCardsList[controller
                                .oracleCardIndex.value]['content']['rendered'],
                            style: {
                              "p": Style(
                                fontFamily: FontName.sourceSansPro,
                                fontWeight: FontWeight.w400,
                                fontSize: FontSize.large,
                                color: AppColor.brown,
                                lineHeight: LineHeight.rem(1.3),
                              ),
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kBottomNavigationBarHeight,
                  )
                ],
              ),
      ),
    );
  }
}
