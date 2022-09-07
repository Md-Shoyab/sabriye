import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/foundation_cards.dart';
import '../../../widgets/spiritual_guiding_points.dart';
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
            color: AppColors.primaryColor,
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
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.givingBackBannerImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(gap: 30),
              Container(
                width: Get.width,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppConstants.givingBackText,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    const Text(AppConstants.givingBackSubtitleText),
                    const VerticalGap(gap: 20),
                    const Text(
                      AppConstants.givingBackContentText,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.3,
                      ),
                    ),
                    const VerticalGap(gap: 50),
                    const Text(
                      AppConstants.intiativeTouchHeartsText,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    const Text(
                      AppConstants.currentOnGoingIntiativeText,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    const FoundationCards(
                      cardContent: AppConstants.smartFoundationContent,
                      imagePath: AppAssets.eSFLogo,
                    ),
                    const VerticalGap(gap: 20),
                    const FoundationCards(
                      cardContent: AppConstants.treeSisterContent,
                      imagePath: AppAssets.treeSisterLogo,
                    ),
                    const VerticalGap(gap: 20),
                    Container(
                      height: 170,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: const AssetImage(AppAssets.spendingMoney),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.5), BlendMode.screen),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          VerticalGap(gap: 25),
                          Text(
                            AppConstants.spendingActualMoneyText,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                          ),
                          VerticalGap(),
                          Text(
                            AppConstants.previousProjectText,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: CarouselSlider.builder(
                        itemCount: 3,
                        itemBuilder: (_, i, k) => Container(
                          width: Get.width,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          margin: const EdgeInsets.fromLTRB(3, 20, 3, 8),
                          decoration: BoxDecoration(
                            color: AppColors.whiteTextColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2.0,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                child: Image.asset(
                                  AppAssets.kettoLogo,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const VerticalGap(gap: 15),
                              const Text(
                                AppConstants.kettoProjectTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const VerticalGap(gap: 15),
                              const Text(
                                AppConstants.kettoProjectContent,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  height: 1.3,
                                ),
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
                          onPageChanged: (index, _) {},
                        ),
                      ),
                    ),
                    const VerticalGap(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    const Text(
                      AppConstants.sevenSpiritualGuidingPrincipleText,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    const Text(
                      'THIS IS HOW WE SHOW UP IN THE WORLD',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    Container(
                      height: 400,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.givingBackSabriye),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SpiritualGudingPoints(
                      pointContent: AppConstants.spiritualPoints1Content,
                      pointTitle: AppConstants.spiritualPoints1,
                    ),
                    const SpiritualGudingPoints(
                      pointContent: AppConstants.spiritualPoints1Content,
                      pointTitle: AppConstants.spiritualPoints2,
                    ),
                    const SpiritualGudingPoints(
                      pointContent: AppConstants.spiritualPoints1Content,
                      pointTitle: AppConstants.spiritualPoints3,
                    ),
                    const SpiritualGudingPoints(
                      pointContent: AppConstants.spiritualPoints1Content,
                      pointTitle: AppConstants.spiritualPoints4,
                    ),
                    const SpiritualGudingPoints(
                      pointContent: AppConstants.spiritualPoints1Content,
                      pointTitle: AppConstants.spiritualPoints5,
                    ),
                    const SpiritualGudingPoints(
                      pointContent: AppConstants.spiritualPoints1Content,
                      pointTitle: AppConstants.spiritualPoints6,
                    ),
                    const SpiritualGudingPoints(
                      pointContent: AppConstants.spiritualPoints1Content,
                      pointTitle: AppConstants.spiritualPoints7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
