import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'About',
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
                'My purpose as a new paradigm healer and leader is multifaceted,yet clear:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.7,
                  color: AppColors.themeTextColor,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                '“When we get the ego and the soul on the same page, we unlock our soul’s SUPER power. This is when creating Heaven on Earth becomes inevitable when our lower and higher self merge and become One.”',
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
                'About Sabriyé',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.themeTextColor,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                'Sabriyé Ayana is a bestselling author, new paradigm business, life & soul mentor, founder of the Akasha Healing™ method and the School of Inner Union. She helps new paradigm shifters and leaders ready to unlock the frequency of Heaven on Earth take their manifesting skills to the Soul level.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),
            const VerticalGap(gap: 30),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                'With a background in IT where Sabriyé used to write user manuals for complex computer systems, she has a unique skill for creating easy to understand step by step user protocols. Sabriyé uses this same gift to break down the Ascension process and other complex spiritual concepts into easy to implement action steps.',
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
                  color: AppColors.themeTextColor,
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
                'The teachings Sabriyé shares concentrate on the fact that the Inner Union or Ascension process is meant to trigger unprocessed collective, personal, and ancestral trauma to help “the self” return to its original state of wholeness. It is through healing these deep subconscious wounds that we recover our true self and prepare the physical body to hold the higher vibrational frequency of the soul, creating as above, so below.',
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
                'She teaches that until we address this trauma from the past, the subconscious mind attempts to help us heal the unprocessed pain of these experiences by pulling in the people, situations, and experiences that help us re-create the unresolved pain of the original wound, in order to be able to release these often long stuck emotions once and for all.',
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
                'Because 95% of our reality is created by the subconscious mind, when we carry unresolved pain and trauma in our energy field, this is what we will see reflected back to us in our external reality. Our outer reality is always a reflection of what is going on inside of us, this remains true whether it is created from the wounded ego (fear) or the soul (love) – as within, so without.',
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
                'The reason why so many people have tried everything else to manifest the life of their dreams but failed is because their ego and soul were not on the same page.',
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
