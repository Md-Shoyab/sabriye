import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/gapper.dart';
import '../controllers/session_details_akashay_controller.dart';

class SessionDetailsAkashayView
    extends GetView<SessionDetailsAkashayController> {
  const SessionDetailsAkashayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFE4DB),
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          '',
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomRight,
            image: AssetImage(AppAssets.flowerImage2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const VerticalGap(gap: 30),
            Text(
              // 'Three Timelines\nHealing €1111',
              controller.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.3,
              ),
            ),
            const VerticalGap(),
            Html(
              // '''Akasha Healing™ works on the three timelines of the past: our childhood, ancestral baggage and past lives. Sometimes no matter how hard we try we can’t seem to create what we want. This is often because there is some subconscious false belief or fear that is holding us back from one or more of the three past timelines. By making this subconscious fear of false belief conscious across the three timelines where they are often entangled and hooked into each other, we can heal them once and for all.''',
              data: controller.content,
              style: {
                "p": Style(alignment: Alignment.center),
              },
            ),
            const VerticalGap(gap: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                AppConstants.buyNowText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
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
                backgroundColor: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
