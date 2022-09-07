import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.aboutText,
          style: TextStyle(
            color: AppColors.primaryColor,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: Get.height * .35,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.aboutBannerImage),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              child: const Text(
                AppConstants.sabriyePurposeInAboutPage,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.7,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                AppConstants.sabriyePurposeInAboutContent,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 8, bottom: 15),
              child: const Text(
                AppConstants.bySabriyeAyanaText,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                AppConstants.sabriyePurposeInAboutContent2,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),
            const VerticalGap(
              gap: 20,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 8, 0, 10),
              child: const Text(
                '“It is everyone’s divine destiny to return to Oneness with their own divinity and all that is. This is not just an honor reserved for a select few. […]',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                '“Sabriyé was led through the Inner Union process as part of her own Twin Flame initiation but then realized the undeniable truth that Inner Union is available to us all and does not depend on a special love connection',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                'It is everyone’s divine destiny to return to Oneness with their own divinity and all that is. This is not just an honor reserved for a select few.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.6,
                  color: AppColors.darkPrimaryColor,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                AppConstants.sabriyePurposeInAboutContent3,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                'The key to unlocking your private version of Paradise is healing this separation between the ego and the soul. It is through this inner union of the higher and lower self, that we create Heaven on Earth from the inside out, instead of endlessly searching for and never quite finding it, in our external circumstances.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: AppColors.darkPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      AppAssets.twitterIcon,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      AppAssets.instagramIcon,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      AppAssets.youtubeIcon,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      AppAssets.pinterestIcon,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      AppAssets.facebookIcon,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
