import 'package:flutter/material.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import '../../../constants/app_colors.dart';

import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_constants.dart';
import '../controllers/support_controller.dart';

class SupportView extends GetView<SupportController> {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.supportText,
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
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppConstants.doYouNeedSupportText,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const VerticalGap(),
            const Text(
              AppConstants.supportScreenSubtitleText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                height: 1.8,
              ),
            ),
            const VerticalGap(gap: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    AppAssets.supportEmailIcon,
                    fit: BoxFit.contain,
                  ),
                ),
                const HorizontalGap(gap: 15),
                const Text(
                  AppConstants.supportMailIdText,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const VerticalGap(gap: 25),
            const Text(
              AppConstants.pleaseAlsoRespectOurTime,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                height: 1.7,
              ),
            ),
            const VerticalGap(gap: 20),
            const Text(
              AppConstants.supportMainContentText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
            const VerticalGap(gap: 15),
            const Text(
              AppConstants.supportMainContentText2,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
            const VerticalGap(gap: 15),
            const Text(
              AppConstants.withMyDeepestLoveText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              height: 40,
              width: 130,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.sabriyeSignature),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                SessionManager.clearSession();
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
