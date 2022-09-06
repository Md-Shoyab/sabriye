import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/session_details_controller.dart';

class SessionDetailsView extends GetView<SessionDetailsController> {
  const SessionDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Sessions Details',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 150,
                  width: Get.width * .35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.akshayHealingSabriyeProfile),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                    height: 150,
                    child: Column(
                      children: const [
                        Text(
                          AppConstants.akashaHealingJourneyWithSabriye,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        VerticalGap(),
                        Text(
                          AppConstants.akashaHealingJourneyWithSabriyeSubText,
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const VerticalGap(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Text(
                AppConstants.whatIsAkashaHealingText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                AppConstants.whatIsAkashaHealingContentText,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),
            ),
            const VerticalGap(),
            const Divider(
              thickness: 1.0,
              indent: 15,
              endIndent: 15,
            ),
            const VerticalGap(),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage(AppAssets.testimonialsProfileImage),
                      radius: 30,
                    ),
                    const VerticalGap(gap: 8),
                    const Text(
                      AppConstants.reenaBaharaniNameText,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(AppConstants.medicalDoctorText),
                    const VerticalGap(),
                    RatingBar.builder(
                      initialRating: 5.0,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                      itemSize: 20,
                    ),
                    const VerticalGap(),
                    const Text(
                      AppConstants.reenaBaharaniTestimonyText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1.0,
              indent: 15,
              endIndent: 15,
            ),
            const VerticalGap(),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                AppConstants.bookYourSessionText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                AppConstants.bookYourSessionContentText,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 30,
              ),
              child: const Text(
                AppConstants.oneOffSessionsText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.SESSION_DETAILS_AKASHAY);
              },
              child: const SessionCards(),
            ),
            const VerticalGap(),
            const SessionCards(),
            const VerticalGap(),
            const SessionCards(),
            const VerticalGap(),
            const SessionCards(),
            const VerticalGap(),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 15,
              ),
              child: const Text(
                AppConstants.akashaHealingPackageText,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SessionCards(),
            const VerticalGap(),
            const SessionCards(),
            const VerticalGap(gap: 20),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  AppConstants.knowMoreAboutAkashaHealing,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteTextColor,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: AppColors.buttonColor,
                ),
              ),
            ),
            const VerticalGap(gap: 50),
          ],
        ),
      ),
    );
  }
}

class SessionCards extends StatelessWidget {
  const SessionCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width * .9,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.whiteTextColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: AppColors.bgLight,
            ),
          ],
          image: const DecorationImage(
            scale: 0.7,
            alignment: Alignment.bottomRight,
            image: AssetImage(AppAssets.flowerImage),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalGap(),
            const Text(
              AppConstants.threeTimelinesHealingText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const VerticalGap(),
            const Text(
              AppConstants.akashaHealingWorksText,
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.5,
                fontSize: 15,
              ),
            ),
            const VerticalGap(gap: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppConstants.buyNowText,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteTextColor,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.buttonColor,
                  ),
                ),
                const HorizontalGap(gap: 30),
                const Text(
                  AppConstants.knowMoreText,
                  style: TextStyle(
                    color: AppColors.themeTextColor,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
