import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/support_controller.dart';

class SupportView extends GetView<SupportController> {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Support',
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
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Do You Need Support?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const VerticalGap(),
            const Text(
              'Please read this section carefully before contacting our Support Team.',
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
                  'helpdesk@sabriyeayana.com',
                  style: TextStyle(
                    color: AppColors.themeTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const VerticalGap(gap: 25),
            const Text(
              'Please also respect our time and boundaries:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                height: 1.7,
              ),
            ),
            const VerticalGap(gap: 20),
            const Text(
              'We DO NOT answer personal questions about your Soul Partnership connection over the chat. My team is not qualified to answer your personal questions as they are trained in tech support and sales.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
            const VerticalGap(gap: 15),
            const Text(
              'You can join the Inner Learning Circle or book an Akasha Healing™ journey if you want more support in your Inner Union and Ascension process.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
            const VerticalGap(gap: 15),
            const Text(
              'With my deepest love,',
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
          ],
        ),
      ),
    );
  }
}
