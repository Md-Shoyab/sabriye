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
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
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
                  Html(
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
                    },
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
                      onFlip: () {
                        controller.backViewCard.toggle();
                        if (controller.backViewCard.isTrue) {
                          controller.getRandomIndex(
                            controller.orcaleCardsList.length,
                          );
                        }
                      },
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
                          data: controller
                                  .orcaleCardsList[controller.randomIndex.value]
                              ['title']['rendered'],
                          style: {
                            'h1': Style(
                              fontSize: FontSize.large,
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
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Html(
                            data: controller.orcaleCardsList[controller
                                .randomIndex.value]['title']['rendered'],
                          ),
                          Html(
                            data: controller.orcaleCardsList[controller
                                .randomIndex.value]['content']['rendered'],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
      ),
    );
  }
}
