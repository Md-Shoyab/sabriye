import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/font_names.dart';
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
              controller.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                fontFamily: FontName.gastromond,
                color: AppColor.brown,
                fontWeight: FontWeight.w400,
                height: 1.3,
              ),
            ),
            const VerticalGap(gap: 15),
            Html(
              data: controller.content,
              style: {
                "p": Style(
                  textAlign: TextAlign.center,
                  lineHeight: LineHeight.rem(1.3),
                  fontFamily: FontName.sourceSansPro,
                  fontWeight: FontWeight.w400,
                ),
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
                minimumSize: const Size(150, 30),
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
