import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
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
      body: ListView(
        children: [
          const VerticalGap(),
          Image.asset(
            AppAssets.innerUnionOrcaleBannerImage,
            fit: BoxFit.cover,
          ),
          const VerticalGap(gap: 20),
          Center(
            child: Image.asset(
              AppAssets.innerUnionOrcaleTextImage,
              fit: BoxFit.cover,
            ),
          ),
          const VerticalGap(gap: 30),
          const Center(
            child: Text(
              AppConstants.pickACardText,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const VerticalGap(),
          const Center(
            child: Text(
              AppConstants.receiveAMessageFromSoul,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const InnerUnionPointers(
            pointNumber: '01',
            pointText: AppConstants.theInnerUnionPointer1Text,
          ),
          const InnerUnionPointers(
            pointNumber: '02',
            pointText: AppConstants.theInnerUnionPointer2Text,
          ),
          const InnerUnionPointers(
            pointNumber: '03',
            pointText: AppConstants.theInnerUnionPointer3Text,
          ),
          const VerticalGap(gap: 15),
          FutureBuilder<List>(
            future: controller.apiServices.getAllCards(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text('0 Cards avaialible'),
                  );
                }
                return Column(
                  children: [
                    FlipCard(
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
                            snapshot.data!.length,
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
                        child: Obx(
                          () => Html(
                            data: snapshot.data?[controller.randomIndex.value]
                                    ['title']['rendered']
                                .toString()
                                .replaceAll('100. ', ''),
                            style: {
                              'h1': Style(
                                fontSize: FontSize.large,
                              )
                            },
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(),
                    // TextButton(
                    //   style: TextButton.styleFrom(
                    //     backgroundColor: AppColors.darkPrimaryColor,
                    //     minimumSize: const Size(200, 40),
                    //     padding: const EdgeInsets.symmetric(horizontal: 15),
                    //   ),
                    //   onPressed: () {},
                    //   child: const Text(
                    //     'Reshuffle The Deck',
                    //     style: TextStyle(
                    //       fontSize: 18,
                    //       color: AppColors.white,
                    //     ),
                    //   ),
                    // ),
                    const VerticalGap(),
                    Obx(
                      () => Visibility(
                        visible: controller.backViewCard.value,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Html(
                              data: snapshot.data?[controller.randomIndex.value]
                                  ['title']['rendered'],
                            ),
                            const VerticalGap(),
                            Html(
                              data: snapshot.data?[controller.randomIndex.value]
                                  ['content']['rendered'],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * .1),
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    );
  }
}
